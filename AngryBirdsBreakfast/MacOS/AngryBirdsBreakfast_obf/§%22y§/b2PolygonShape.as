package §"y§
{
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §-!=§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!=§ = new b2Mat22();
         }
      }
      
      b2internal var §7N§:b2Vec2;
      
      b2internal var §-!L§:Vector.<b2Vec2>;
      
      b2internal var §0!O§:Vector.<b2Vec2>;
      
      b2internal var §!1§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(true)
            {
               §6m§ = b2internal::2e;
               addr108:
               while(true)
               {
                  this.§7N§ = new b2Vec2();
               }
            }
            addr111:
         }
         loop2:
         while(true)
         {
            this.§-!L§ = new Vector.<b2Vec2>();
            loop3:
            while(true)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§0!O§ = new Vector.<b2Vec2>();
                  do
                  {
                     §,!;§ = b2Settings.b2_polygonRadius;
                     continue loop3;
                  }
                  while(_loc1_ && this);
                  
                  return;
               }
               continue loop2;
            }
         }
      }
      
      public static function §^_§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || param2)
         {
            _loc3_.§-![§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §@5§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || param2)
         {
            _loc3_.§2!A§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §^C§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || param1)
         {
            _loc3_.§class§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §8!2§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§3!9§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §]!+§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§6_§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §#!m§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(_loc17_)
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
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
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
                                 if(_loc17_)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr368:
                                       while(_loc17_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       continue loop1;
                                       loop23:
                                       while(_loc17_ || b2PolygonShape)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc17_)
                                          {
                                             if(_loc17_)
                                             {
                                                if(_loc17_ || b2PolygonShape)
                                                {
                                                   if(!(_loc18_ && _loc3_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         addr319:
                                                         loop25:
                                                         while(_loc17_ || param2)
                                                         {
                                                            §§push(0.5);
                                                            if(_loc17_)
                                                            {
                                                               §§push(_loc15_);
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr250:
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           addr258:
                                                                           §§push(§§pop() * §§pop());
                                                                           while(_loc17_ || b2PolygonShape)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 addr267:
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                                 loop13:
                                                                                 while(_loc17_ || param1)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_.y);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          break loop26;
                                                                                          addr220:
                                                                                          if(!(_loc17_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             continue loop28;
                                                                                          }
                                                                                          addr351:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr352:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                           §§goto(addr368);
                                                                           addr258:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr351);
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop23;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr332:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr333:
                                                                     addr371:
                                                                     while(!(_loc18_ && param2))
                                                                     {
                                                                        _loc14_ = §§pop();
                                                                        break loop25;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        §§goto(addr372);
                                                                        §§goto(addr333);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr272);
                                                            §§goto(addr319);
                                                         }
                                                      }
                                                      addr318:
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr332);
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr318);
                                       }
                                    }
                                 }
                                 §§goto(addr371);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr360);
            }
            §§goto(addr85);
         }
         if(_loc17_ || _loc3_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc18_ && param2))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!_loc18_)
            {
               addr407:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc17_ || param2)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr407);
      }
      
      b2internal static function §=N§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc4_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
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
         if(!(_loc26_ && b2PolygonShape))
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc27_)
               {
                  if(!_loc26_)
                  {
                     _loc5_[param3] = _loc5_[0];
                     addr90:
                     if(!(_loc27_ || param3))
                     {
                        continue;
                     }
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
                  continue;
               }
               §§goto(addr90);
            }
            else
            {
               _loc5_[_loc4_] = param2[_loc4_];
            }
            §§goto(addr111);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(_loc27_ || param2)
         {
            §§push(1);
            if(_loc27_)
            {
               _loc4_ = §§pop();
               if(_loc27_)
               {
                  addr132:
                  loop87:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1179:
                     while(§§pop() <= param3)
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
                                                                     while(_loc27_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           continue loop8;
                                                                           addr470:
                                                                           if(_loc26_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc26_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(_loc16_);
                                                                           loop41:
                                                                           while(!_loc26_)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 if(_loc27_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop42:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          loop62:
                                                                                          while(_loc27_ || param3)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr512:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc18_ = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                addr511:
                                                                                             }
                                                                                             loop63:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   if(_loc27_ || param3)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   addr678:
                                                                                                   if(_loc27_ || param3)
                                                                                                   {
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr688:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               addr596:
                                                                                                               addr693:
                                                                                                               §§push(_loc22_);
                                                                                                               if(!(_loc26_ && b2PolygonShape))
                                                                                                               {
                                                                                                                  addr606:
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        addr609:
                                                                                                                        if(_loc27_ || param3)
                                                                                                                        {
                                                                                                                           addr617:
                                                                                                                           §§push(_loc22_);
                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                           {
                                                                                                                              addr625:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc27_ || param3)
                                                                                                                              {
                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                 if(_loc26_ && param2)
                                                                                                                                 {
                                                                                                                                    continue loop87;
                                                                                                                                 }
                                                                                                                                 addr640:
                                                                                                                                 if(_loc27_ || param3)
                                                                                                                                 {
                                                                                                                                    addr591:
                                                                                                                                    _loc17_++;
                                                                                                                                    addr593:
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       addr595:
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= param3)
                                                                                                                                             {
                                                                                                                                                loop40:
                                                                                                                                                while(_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            addr455:
                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  loop65:
                                                                                                                                                                  while(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     loop66:
                                                                                                                                                                     while(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           loop43:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop44:
                                                                                                                                                                              while(!_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                                                                 loop45:
                                                                                                                                                                                 while(!(_loc26_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.R);
                                                                                                                                                                                    loop46:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().col1);
                                                                                                                                                                                       loop47:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             if(_loc26_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop87;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.R);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().col1);
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                   if(_loc26_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   loop49:
                                                                                                                                                                                                   for(; _loc27_ || b2PolygonShape; if(!(_loc27_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   },if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr241);
                                                                                                                                                                                                   },§§push(param1.R))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.R);
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().col2);
                                                                                                                                                                                                         loop50:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                            loop51:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                               loop52:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc27_ || param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop66;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param1.R);
                                                                                                                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop46;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop().col2);
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop51;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                           loop53:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                    addr241:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop59:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                          loop60:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop53;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop52;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr154:
                                                                                                                                                                                                                                                         if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr168:
                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                            if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr177:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop65;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr194:
                                                                                                                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr216:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc26_ && param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr802:
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                          addr805:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr768:
                                                                                                                                                                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr783:
                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr782:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop() + _loc12_ * _loc20_);
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr798:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr800:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop() * _loc20_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr784:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                         break loop40;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr783:
                                                                                                                                                                                                                                                                                                   addr776:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr802);
                                                                                                                                                                                                                                                                                                   §§goto(addr768);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr783);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr805:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop87;
                                                                                                                                                                                                                                                                                    break loop59;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr696:
                                                                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                                                                 loop72:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr721:
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                                                                          break loop62;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr640);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                                                                       addr721:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr652:
                                                                                                                                                                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr688);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr899:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                          addr900:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                                                                                                             addr891:
                                                                                                                                                                                                                                                                                             loop29:
                                                                                                                                                                                                                                                                                             while(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                                                                   addr870:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      break loop72;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr609);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr798);
                                                                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr652);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr784);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr625);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr815:
                                                                                                                                                                                                                                                                           if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr822:
                                                                                                                                                                                                                                                                              _loc20_ = §§pop();
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr789);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                                                                                                                                 §§goto(addr822);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr891);
                                                                                                                                                                                                                                                                              addr823:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr924);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr688);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop63;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    break loop60;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop12;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr814:
                                                                                                                                                                                                                                                                              §§goto(addr815);
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr721);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr194);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr596);
                                                                                                                                                                                                                                                                        addr287:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr790);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr216);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(_loc27_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr287);
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr606);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr512);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(_loc27_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr557:
                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop65;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr557:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr782);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr268:
                                                                                                                                                                                                                                                                  addr542:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr660);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr268);
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                  §§goto(addr168);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr557);
                                                                                                                                                                                                                                                               addr258:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr782);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr800);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr177);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr216);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr929);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr814);
                                                                                                                                                                                                                                             §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr843:
                                                                                                                                                                                                                                       addr864:
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                          addr865:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop39;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                       §§goto(addr847);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr924);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop43;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(!(_loc26_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr973:
                                                                                                                                                                                                                           _loc25_ = §§pop();
                                                                                                                                                                                                                           if(_loc27_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1175:
                                                                                                                                                                                                                              param1.center.x = _loc7_.x + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                              addr1176:
                                                                                                                                                                                                                              addr1156:
                                                                                                                                                                                                                              addr1162:
                                                                                                                                                                                                                              addr1161:
                                                                                                                                                                                                                              addr1173:
                                                                                                                                                                                                                              addr1160:
                                                                                                                                                                                                                              addr1157:
                                                                                                                                                                                                                              addr1158:
                                                                                                                                                                                                                              addr1174:
                                                                                                                                                                                                                              addr1155:
                                                                                                                                                                                                                              addr1153:
                                                                                                                                                                                                                              §§push(param1.center);
                                                                                                                                                                                                                              if(!(_loc26_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc7_.y);
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc25_.col1);
                                                                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                   if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc25_.col2);
                                                                                                                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1128:
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1141:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1145:
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                 addr1034:
                                                                                                                                                                                                                                                                                 addr1044:
                                                                                                                                                                                                                                                                                 addr1037:
                                                                                                                                                                                                                                                                                 §§push(param1.§?G§);
                                                                                                                                                                                                                                                                                 §§push(0.5);
                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1043:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * (_loc15_ - _loc13_));
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                 addr1148:
                                                                                                                                                                                                                                                                                 addr1045:
                                                                                                                                                                                                                                                                                 §§push(param1.§?G§);
                                                                                                                                                                                                                                                                                 if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                                                                if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1022:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1025:
                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1034);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break loop65;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1176);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1148);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1045);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1043);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1022);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1044);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1025);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1037);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1175);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1156);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1162);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1161);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1173);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1141);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1160);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1141);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1157);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1128);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1158);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1174);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1141);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1155);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1153);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1145);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1151:
                                                                                                                                                                                                                              §§goto(addr1151);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1034);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr805);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr677);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop66;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr973);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr737:
                                                                                                                                                                                                   if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc27_ || param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      while(!(_loc26_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                            addr763:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr696);
                                                                                                                                                                                                               §§goto(addr763);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr788);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr925);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                      addr863:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr864);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr737);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr973);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr609);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop87;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr593);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr617);
                                                                                                                                                                           }
                                                                                                                                                                           addr569:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr763);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr693);
                                                                                                                                                                  }
                                                                                                                                                                  _loc4_++;
                                                                                                                                                                  continue loop87;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop62;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr470);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr903);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr863);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr511);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr865);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      break loop41;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr760);
                                                                                                                                                   §§goto(addr784);
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                             §§goto(addr843);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc17_ = §§pop();
                                                                                                                                          §§goto(addr851);
                                                                                                                                          §§goto(addr430);
                                                                                                                                       }
                                                                                                                                       addr430:
                                                                                                                                    }
                                                                                                                                    §§goto(addr823);
                                                                                                                                 }
                                                                                                                                 §§goto(addr721);
                                                                                                                              }
                                                                                                                              §§goto(addr783);
                                                                                                                           }
                                                                                                                           §§goto(addr782);
                                                                                                                        }
                                                                                                                        §§goto(addr894);
                                                                                                                     }
                                                                                                                     §§goto(addr591);
                                                                                                                  }
                                                                                                                  §§goto(addr782);
                                                                                                               }
                                                                                                               §§goto(addr784);
                                                                                                            }
                                                                                                            §§goto(addr928);
                                                                                                         }
                                                                                                         §§goto(addr904);
                                                                                                      }
                                                                                                      §§goto(addr870);
                                                                                                   }
                                                                                                   §§goto(addr760);
                                                                                                }
                                                                                                §§goto(addr596);
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          if(_loc27_ || param2)
                                                                                          {
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§goto(addr711);
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr752);
                                                                                       }
                                                                                       §§goto(addr569);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr800);
                                                                              }
                                                                              §§goto(addr557);
                                                                           }
                                                                           if(!(_loc26_ && param2))
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 §§goto(addr737);
                                                                              }
                                                                              §§goto(addr694);
                                                                           }
                                                                           §§goto(addr776);
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
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc26_ && param3)
                              {
                                 continue;
                              }
                              §§goto(addr542);
                              §§push(0.95);
                           }
                        }
                        §§goto(addr805);
                        continue loop87;
                     }
                  }
               }
               return;
            }
            §§goto(addr1179);
         }
         §§goto(addr132);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(_loc4_ || _loc2_)
         {
            super.Set(param1);
            if(_loc4_)
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
            if(_loc4_ || _loc2_)
            {
               this.§7N§.SetV(_loc2_.§7N§);
               loop0:
               while(true)
               {
                  this.§!1§ = _loc2_.§!1§;
                  addr125:
                  while(true)
                  {
                     this.§`t§(this.§!1§);
                     do
                     {
                        _loc3_ = 0;
                     }
                     while(!_loc4_);
                     
                     if(_loc4_ || this)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc3_ < this.§!1§)
                     {
                        this.§-!L§[_loc3_].SetV(_loc2_.§-!L§[_loc3_]);
                        if(_loc4_)
                        {
                           while(true)
                           {
                              this.§0!O§[_loc3_].SetV(_loc2_.§0!O§[_loc3_]);
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
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
                        }
                     }
                     §§goto(addr146);
                  }
               }
            }
            §§goto(addr125);
         }
         addr146:
      }
      
      public function §-![§(param1:Array, param2:Number = 0) : void
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
            this.§2!A§(_loc3_,param2);
         }
      }
      
      public function §2!A§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
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
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr250:
                     while(true)
                     {
                        param2 = §§pop();
                        addr251:
                        while(true)
                        {
                        }
                     }
                     addr213:
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                     _loc3_ = 0;
                     addr220:
                     if(!(_loc7_ || param2))
                     {
                        loop4:
                        while(true)
                        {
                           if(_loc7_ || param1)
                           {
                              §§goto(addr213);
                           }
                           else
                           {
                              loop3:
                              while(true)
                              {
                                 if(_loc7_ || param2)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    this.§`t§(param2);
                                    continue loop4;
                                 }
                                 addr241:
                                 while(true)
                                 {
                                    this.§!1§ = param2;
                                    continue loop3;
                                 }
                              }
                              §§goto(addr251);
                           }
                        }
                     }
                     loop7:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop8:
                        while(true)
                        {
                           §§push(this.§!1§);
                           if(!(_loc8_ && param2))
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop10:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§!1§);
                                                   addr316:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            this.§7N§ = §#!m§(this.§-!L§,this.§!1§);
                                                            break loop10;
                                                         }
                                                         break loop10;
                                                      }
                                                      §§push(_loc3_);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!(_loc7_ || param2))
                                                         {
                                                            break;
                                                         }
                                                         _loc4_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(1);
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc8_)
                                                               {
                                                                  if(§§pop() < this.§!1§)
                                                                  {
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc8_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr74:
                                                                                    §§push(int(§§pop() + §§pop()));
                                                                                    if(_loc8_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       addr98:
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break loop15;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     addr114:
                                                                     if(false)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     _loc6_ = b2Math.§";§(this.§-!L§[_loc5_],this.§-!L§[_loc4_]);
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        b2Settings.b2Assert(_loc6_.§<T§() > Number.MIN_VALUE);
                                                                        while(true)
                                                                        {
                                                                           this.§0!O§[_loc3_].SetV(b2Math.§+2§(_loc6_,1));
                                                                           addr302:
                                                                           loop18:
                                                                           while(!_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§0!O§[_loc3_].Normalize();
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc3_++;
                                                                        if(_loc8_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr302);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  §§push(0);
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     break loop15;
                                                                  }
                                                                  §§goto(addr98);
                                                               }
                                                               §§goto(addr74);
                                                            }
                                                            break;
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(!(_loc7_ || _loc3_))
                                                         {
                                                            break loop10;
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       break;
                                    }
                                 }
                              }
                              else
                              {
                                 this.§-!L§[_loc3_].SetV(param1[_loc3_]);
                                 _loc3_++;
                                 addr190:
                                 if(_loc7_ || param2)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr190);
                                 }
                              }
                              return;
                           }
                           §§goto(addr316);
                        }
                     }
                     addr201:
                  }
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  §§goto(addr241);
                  §§goto(addr251);
               }
            }
            §§goto(addr250);
         }
         §§goto(addr201);
      }
      
      public function §class§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§!1§ = 4;
            while(true)
            {
               this.§`t§(4);
               addr64:
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               this.§0!O§[3].Set(-1,0);
               loop9:
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  addr57:
                  while(!(_loc3_ && param1))
                  {
                     §§goto(addr64);
                  }
                  loop7:
                  while(true)
                  {
                     if(!(_loc3_ && param2))
                     {
                        addr97:
                        if(_loc4_ || this)
                        {
                           if(_loc4_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              this.§0!O§[2].Set(0,1);
                              continue;
                           }
                           while(true)
                           {
                              this.§-!L§[2].Set(param1,param2);
                              addr138:
                              while(true)
                              {
                                 this.§-!L§[3].Set(-param1,param2);
                              }
                           }
                           addr148:
                        }
                        while(true)
                        {
                           this.§0!O§[0].Set(0,-1);
                           §§goto(addr97);
                        }
                     }
                     while(_loc4_)
                     {
                        this.§0!O§[1].Set(1,0);
                        continue loop7;
                     }
                     §§goto(addr138);
                  }
                  addr174:
                  while(true)
                  {
                     this.§-!L§[0].Set(-param1,-param2);
                     break loop9;
                  }
               }
               while(true)
               {
                  this.§-!L§[1].Set(param1,-param2);
                  §§goto(addr148);
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §3!9§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            this.§!1§ = 4;
            loop0:
            while(true)
            {
               this.§`t§(4);
               while(true)
               {
                  this.§-!L§[0].Set(-param1,-param2);
                  loop2:
                  for(; !(_loc8_ && param1); while(_loc7_ || param2)
                  {
                     this.§0!O§[0].Set(0,-1);
                     §§goto(addr94);
                  })
                  {
                     this.§-!L§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§-!L§[2].Set(param1,param2);
                        while(true)
                        {
                           this.§-!L§[3].Set(-param1,param2);
                           continue loop2;
                           addr37:
                           if(!(_loc7_ || param2))
                           {
                              continue;
                           }
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           if(false)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§0!O§[3].Set(-1,0);
                                 loop10:
                                 while(!_loc8_)
                                 {
                                    addr58:
                                    if(_loc7_ || this)
                                    {
                                       while(true)
                                       {
                                          this.§7N§ = param3;
                                          if(!(_loc7_ || param3))
                                          {
                                             continue loop10;
                                          }
                                          if(_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr37);
                                       }
                                       addr175:
                                       var _loc5_:b2Transform;
                                       (_loc5_ = new b2Transform()).position = param3;
                                       if(!_loc8_)
                                       {
                                          _loc5_.R.Set(param4);
                                       }
                                       var _loc6_:int = 0;
                                       while(true)
                                       {
                                          if(_loc6_ >= this.§!1§)
                                          {
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             this.§-!L§[_loc6_] = b2Math.§!v§(_loc5_,this.§-!L§[_loc6_]);
                                             while(true)
                                             {
                                                this.§0!O§[_loc6_] = b2Math.§"]§(_loc5_.R,this.§0!O§[_loc6_]);
                                             }
                                             addr245:
                                          }
                                          while(_loc8_)
                                          {
                                             §§goto(addr245);
                                          }
                                          _loc6_++;
                                       }
                                       return;
                                       addr65:
                                    }
                                    addr83:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          this.§0!O§[2].Set(0,1);
                                          break loop10;
                                       }
                                       break;
                                       §§goto(addr58);
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                              }
                           }
                           §§goto(addr175);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §6_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§!1§ = 2;
            while(true)
            {
               this.§`t§(2);
               while(!_loc4_)
               {
                  this.§-!L§[0].SetV(param1);
                  loop2:
                  while(true)
                  {
                     this.§-!L§[1].SetV(param2);
                     while(true)
                     {
                        §§push(this.§7N§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr175:
                           while(true)
                           {
                              §§push(param1.x);
                              addr177:
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr179:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr180:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr181:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr182:
                                          while(!_loc4_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc3_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr71);
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
            if(_loc12_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc12_)
         {
            §§push(§§pop() - param1.position.y);
            if(_loc12_)
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(_loc12_ || param2)
            {
               §§push(_loc4_.col1.x);
               if(!_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc12_ || param1)
                  {
                     §§push(_loc6_);
                     if(!_loc11_)
                     {
                        addr83:
                        §§push(§§pop() + §§pop() * _loc4_.col1.y);
                        if(_loc11_)
                        {
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc5_);
                        if(_loc12_)
                        {
                           §§push(_loc4_.col2.x);
                           if(!_loc11_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc12_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc11_)
                                 {
                                    addr102:
                                    §§push(§§pop() * _loc4_.col2.y);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc12_)
                                 {
                                    addr109:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 var _loc9_:int = 0;
                                 while(true)
                                 {
                                    if(_loc9_ >= this.§!1§)
                                    {
                                       return true;
                                    }
                                    _loc3_ = this.§-!L§[_loc9_];
                                    if(!_loc11_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc12_ || param1)
                                       {
                                          §§push(_loc3_.x);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc12_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      addr159:
                                                      §§push(_loc8_);
                                                      if(_loc12_)
                                                      {
                                                         addr162:
                                                         §§push(§§pop() - _loc3_.y);
                                                         if(_loc12_ || param2)
                                                         {
                                                            addr173:
                                                            _loc6_ = Number(§§pop());
                                                         }
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   _loc3_ = this.§0!O§[_loc9_];
                                                   if(!_loc11_)
                                                   {
                                                      §§push(_loc3_.x);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc11_)
                                                            {
                                                               §§push(_loc3_.y);
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     addr220:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc12_ || _loc3_)
                                                                        {
                                                                           addr236:
                                                                           §§push(§§pop());
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              addr240:
                                                                              §§push(0);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr240);
                                                                  }
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr263:
                                                                  _loc9_++;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr159);
                                 }
                                 return false;
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr83);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr83);
         }
         §§goto(addr53);
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
         §§push(param2.§]!4§);
         if(!(_loc20_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc20_)
         {
            §§push(param2.p1);
            if(!(_loc20_ && param1))
            {
               §§push(§§pop().x);
               if(!_loc20_)
               {
                  §§push(param3.position);
                  if(!_loc20_)
                  {
                     §§push(§§pop().x);
                     if(!(_loc20_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_ || param3)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc20_)
                           {
                              _loc6_ = §§pop();
                              if(_loc21_ || param1)
                              {
                                 addr94:
                                 §§push(param2.p1.y);
                                 if(!(_loc20_ && param2))
                                 {
                                    addr105:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_ || this)
                                    {
                                       addr114:
                                       _loc7_ = Number(§§pop());
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!(_loc20_ && param3))
                              {
                                 §§push(_loc8_.col1.x);
                                 if(!(_loc20_ && this))
                                 {
                                    addr155:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc21_ || param1)
                                       {
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                    }
                                    var _loc10_:Number = §§pop();
                                    §§push(_loc6_);
                                    if(_loc21_)
                                    {
                                       §§push(_loc8_.col2.x);
                                       if(_loc21_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc21_)
                                          {
                                             §§push(_loc7_);
                                             if(!_loc20_)
                                             {
                                                addr171:
                                                §§push(§§pop() * _loc8_.col2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc20_ && param3))
                                             {
                                                addr183:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc11_:* = §§pop();
                                             if(!(_loc20_ && param1))
                                             {
                                                §§push(param2.p2);
                                                if(_loc21_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc21_)
                                                   {
                                                      §§push(param3.position);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc20_ && param3))
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc21_ || param3)
                                                               {
                                                                  addr222:
                                                                  _loc6_ = §§pop();
                                                                  if(_loc21_ || param1)
                                                                  {
                                                                     addr232:
                                                                     §§push(param2.p2.y);
                                                                     if(_loc21_ || param1)
                                                                     {
                                                                        addr243:
                                                                        §§push(§§pop() - param3.position.y);
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr246:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     addr248:
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
                                                                              if(!(_loc20_ && this))
                                                                              {
                                                                                 addr281:
                                                                                 §§push(§§pop() * _loc8_.col1.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc20_)
                                                                              {
                                                                              }
                                                                              addr289:
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(_loc8_.col2.x);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc21_ || this)
                                                                                       {
                                                                                          addr313:
                                                                                          §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr316:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(_loc21_ || this)
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
                                                                                          addr339:
                                                                                          §§push(Number(§§pop()));
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
                                                                                             §§push(this.§!1§);
                                                                                             if(!(_loc20_ && param2))
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   addr825:
                                                                                                   if(_loc21_ || this)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      break;
                                                                                                   }
                                                                                                   param1.fraction = _loc4_;
                                                                                                   _loc8_ = param3.R;
                                                                                                   _loc9_ = this.§0!O§[_loc16_];
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(param1.normal);
                                                                                                      loop48:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col1);
                                                                                                         addr933:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr934:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_.x);
                                                                                                               addr936:
                                                                                                               loop51:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr952:
                                                                                                                        addr896:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           addr954:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr955:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        if(_loc20_ && this)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr908:
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 continue loop51;
                                                                                                                              }
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr917:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc21_ || this)
                                                                                                                                 {
                                                                                                                                    addr925:
                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       return true;
                                                                                                                                       addr928:
                                                                                                                                    }
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 §§goto(addr952);
                                                                                                                              }
                                                                                                                              §§goto(addr954);
                                                                                                                           }
                                                                                                                           §§goto(addr955);
                                                                                                                        }
                                                                                                                        §§goto(addr917);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr956:
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
                                                                                                   §§goto(addr928);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push((_loc9_ = this.§-!L§[_loc17_]).x);
                                                                                                   if(_loc21_ || this)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               addr376:
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!(_loc20_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(_loc21_ || param3)
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
                                                                                                               §§push((_loc9_ = this.§0!O§[_loc17_]).x);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_ || param3)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(!(_loc20_ && param3))
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(_loc21_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_.x);
                                                                                                                                          loop34:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             loop16:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.y);
                                                                                                                                                   if(!(_loc20_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr780:
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr781:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr780:
                                                                                                                                                   }
                                                                                                                                                   loop33:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                      addr792:
                                                                                                                                                      loop45:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         loop46:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() != §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr745:
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               loop8:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop45;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop9:
                                                                                                                                                                  while(!(_loc20_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop46;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                     loop10:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr763:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    addr711:
                                                                                                                                                                                    addr790:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          addr722:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr790:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr762:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop5:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc20_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                break loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr738:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop25:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop26:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                                                                addr742:
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   if(!(_loc20_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop2:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc21_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr513:
                                                                                                                                                                                                                        §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc21_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop35:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop36:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc17_++;
                                                                                                                                                                                                                                                if(_loc20_ && param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr696);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(false)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop0;
                                                                                                                                                                                                                                                         addr490:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr763);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr649:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr539:
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(false);
                                                                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop35;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr762);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop42:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  addr696:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop9;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                           if(_loc21_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr593:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 loop6:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc20_ && param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop6;
                                                                                                                                                                                                                                                                                             addr670:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop36;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr597:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr781);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr594:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr780);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr781);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr722);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr576:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr644:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr649);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr648:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr790);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr711);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr696:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr798);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr711);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr597);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr743:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr711);
                                                                                                                                                                                                                                                §§goto(addr696);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop26;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop8;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr644);
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr644);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr628:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            break loop9;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr795:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr644);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr797);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr539);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                       addr538:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop5;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr662:
                                                                                                                                                                                                                              §§goto(addr670);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr576);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr628);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr594);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr513);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr661:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr662);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr644);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr740:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr794:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr795);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr742);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr661);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr740);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr743);
                                                                                                                                                                     }
                                                                                                                                                                     addr797:
                                                                                                                                                                     addr798:
                                                                                                                                                                     return §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr794);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr791:
                                                                                                                                                }
                                                                                                                                                §§goto(addr790);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr766:
                                                                                                                                       }
                                                                                                                                       §§goto(addr490);
                                                                                                                                    }
                                                                                                                                    §§goto(addr738);
                                                                                                                                 }
                                                                                                                                 §§goto(addr648);
                                                                                                                              }
                                                                                                                              §§goto(addr781);
                                                                                                                           }
                                                                                                                           §§goto(addr780);
                                                                                                                        }
                                                                                                                        §§goto(addr791);
                                                                                                                     }
                                                                                                                     §§goto(addr766);
                                                                                                                  }
                                                                                                                  §§goto(addr538);
                                                                                                               }
                                                                                                               §§goto(addr792);
                                                                                                            }
                                                                                                            §§goto(addr397);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                             }
                                                                                             addr822:
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                return false;
                                                                                             }
                                                                                             if(_loc20_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr825);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr822);
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 §§goto(addr313);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr289);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr222);
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc20_)
                                 {
                                 }
                              }
                              §§goto(addr155);
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr114);
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
         var _loc4_:b2Vec2 = this.§-!L§[0];
         §§push(param2.position.x);
         if(_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc12_)
            {
               §§push(_loc4_.x);
               if(!_loc12_)
               {
                  addr62:
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
                  if(!(_loc12_ && _loc3_))
                  {
                     addr70:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc12_ && param1))
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc12_)
                     {
                        §§push(_loc4_.x);
                        if(!(_loc12_ && this))
                        {
                           addr113:
                           §§push(§§pop() * §§pop());
                           if(_loc13_ || param1)
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc13_)
                              {
                                 §§push(§§pop() * _loc4_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc12_ && _loc3_))
                           {
                              addr122:
                              var _loc6_:Number = §§pop();
                              §§push(_loc5_);
                              if(!(_loc12_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc12_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              while(_loc9_ < this.§!1§)
                              {
                                 _loc4_ = this.§-!L§[_loc9_];
                                 if(!_loc12_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr531:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr533:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr534:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                addr536:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr537:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr539:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr540:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr542:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr543:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr544:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr545:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr546:
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
                                 §§goto(addr414);
                              }
                              if(!_loc12_)
                              {
                                 §§push(param1.§?J§);
                                 if(_loc13_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_ || _loc3_)
                                    {
                                       §§push(§§pop() - b2internal::,!;);
                                       if(!_loc12_)
                                       {
                                          §§goto(addr570);
                                       }
                                       §§goto(addr632);
                                    }
                                    addr570:
                                    §§pop().x = §§pop();
                                    if(!_loc12_)
                                    {
                                       addr629:
                                       §§push(param1.§?J§);
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          addr632:
                                          §§push(§§pop() - b2internal::,!;);
                                       }
                                       §§pop().y = §§pop();
                                       loop56:
                                       while(true)
                                       {
                                          §§push(param1.§1^§);
                                          loop57:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr611:
                                             while(true)
                                             {
                                                §§pop().x = §§pop() + b2internal::,!;;
                                                addr614:
                                                while(!_loc12_)
                                                {
                                                   continue loop57;
                                                }
                                                continue loop56;
                                             }
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr629);
                              }
                              §§goto(addr616);
                           }
                           §§goto(addr122);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr122);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr62);
         }
         §§goto(addr70);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
         var _loc5_:b2Vec2 = b2Math.§3r§(param3.R,param1);
         §§push(param2);
         if(!_loc27_)
         {
            §§push(§§pop() - b2Math.§7!c§(param1,param3.position));
            if(_loc28_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            var _loc8_:int = 0;
            var _loc9_:* = -1;
            var _loc10_:* = -1;
            var _loc11_:* = false;
            if(_loc28_)
            {
               _loc12_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(!(_loc27_ && param1))
               {
                  §§push(this.§!1§);
                  if(_loc28_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc28_ || param3)
                        {
                           addr280:
                           §§push(_loc8_);
                           if(!_loc27_)
                           {
                              addr401:
                              var _loc26_:* = §§pop();
                              if(_loc28_ || param1)
                              {
                                 §§push(0);
                                 if(_loc28_ || param2)
                                 {
                                    §§push(_loc26_);
                                    if(!(_loc27_ && param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc28_ || param2)
                                          {
                                             addr433:
                                             §§push(0);
                                             if(_loc28_ || param3)
                                             {
                                                addr441:
                                             }
                                             addr460:
                                             if(_loc28_)
                                             {
                                                switch(§§pop())
                                                {
                                                   case 1:
                                                      §§push(_loc9_);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(-1);
                                                         if(_loc28_ || param1)
                                                         {
                                                            addr345:
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(this.§!1§);
                                                               if(!_loc28_)
                                                               {
                                                                  §§goto(addr401);
                                                               }
                                                               addr376:
                                                               §§push(§§pop() - 1);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     addr387:
                                                                     _loc10_ = §§pop();
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        addr395:
                                                                     }
                                                                     addr464:
                                                                     §§push(_loc9_);
                                                                     if(_loc28_ || param2)
                                                                     {
                                                                        addr472:
                                                                        §§push(§§pop() + 1);
                                                                        if(!(_loc27_ && param3))
                                                                        {
                                                                           addr481:
                                                                           §§push(§§pop() % this.§!1§);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr472);
                                                               }
                                                               §§push(int(§§pop()));
                                                               break;
                                                            }
                                                            if(!(_loc27_ && param1))
                                                            {
                                                               addr353:
                                                               §§push(this.§!1§);
                                                               if(_loc28_)
                                                               {
                                                                  addr357:
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc28_)
                                                                  {
                                                                     addr360:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        addr368:
                                                                        _loc9_ = §§pop();
                                                                        if(!_loc27_)
                                                                        {
                                                                           addr371:
                                                                        }
                                                                        §§goto(addr395);
                                                                     }
                                                                     §§goto(addr472);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr464);
                                                         }
                                                         §§goto(addr472);
                                                      }
                                                      §§goto(addr368);
                                                   default:
                                                      §§goto(addr464);
                                                   case 0:
                                                      addr283:
                                                      if(_loc11_)
                                                      {
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr395);
                                                      }
                                                      §§goto(addr322);
                                                }
                                             }
                                             var _loc13_:* = §§pop();
                                             §§push(_loc10_);
                                             if(_loc28_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc28_ || this)
                                                {
                                                   §§push(§§pop() % this.§!1§);
                                                }
                                                §§push(int(§§pop()));
                                             }
                                             var _loc14_:* = §§pop();
                                             §§push(0 - _loc7_[_loc9_]);
                                             if(!(_loc27_ && param2))
                                             {
                                                §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                if(_loc28_ || param2)
                                                {
                                                   addr540:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc15_:* = §§pop();
                                                §§push(0 - _loc7_[_loc10_]);
                                                if(_loc28_)
                                                {
                                                   §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                   if(_loc28_ || this)
                                                   {
                                                      addr564:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc16_:* = §§pop();
                                                   §§push(§§findproperty(b2Vec2));
                                                   §§push(this.§-!L§[_loc9_].x * (1 - _loc15_));
                                                   if(!(_loc27_ && this))
                                                   {
                                                      §§push(this.§-!L§[_loc13_].x * _loc15_);
                                                      if(_loc28_ || param3)
                                                      {
                                                         addr598:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this.§-!L§[_loc9_].y * (1 - _loc15_));
                                                         if(!_loc27_)
                                                         {
                                                            addr609:
                                                            §§push(§§pop() + this.§-!L§[_loc13_].y * _loc15_);
                                                         }
                                                         var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                         §§push(§§findproperty(b2Vec2));
                                                         §§push(this.§-!L§[_loc10_].x * (1 - _loc16_));
                                                         if(_loc28_ || this)
                                                         {
                                                            §§push(this.§-!L§[_loc14_].x * _loc16_);
                                                            if(_loc28_)
                                                            {
                                                               addr647:
                                                               §§push(§§pop() + §§pop());
                                                               §§push(this.§-!L§[_loc10_].y * (1 - _loc16_));
                                                               if(!(_loc27_ && param3))
                                                               {
                                                                  §§push(§§pop() + this.§-!L§[_loc14_].y * _loc16_);
                                                               }
                                                            }
                                                            var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                            var _loc19_:* = Number(0);
                                                            var _loc20_:b2Vec2 = new b2Vec2();
                                                            var _loc21_:b2Vec2 = this.§-!L§[_loc13_];
                                                            if(_loc28_)
                                                            {
                                                               §§push(_loc13_);
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(_loc28_ || param3)
                                                                  {
                                                                     _loc12_ = §§pop();
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        §§goto(addr1011);
                                                                     }
                                                                     §§goto(addr779);
                                                                  }
                                                                  §§goto(addr747);
                                                               }
                                                               addr1011:
                                                               if(_loc12_ != _loc14_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!(_loc27_ && param1))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(§§pop() % this.§!1§);
                                                                           if(!(_loc27_ && param2))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr747:
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc27_ && param3))
                                                                                 {
                                                                                    addr755:
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc27_ && param3))
                                                                                    {
                                                                                       addr763:
                                                                                       §§push(_loc14_);
                                                                                       if(_loc28_ || param3)
                                                                                       {
                                                                                          addr771:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!(_loc27_ && param2))
                                                                                             {
                                                                                                addr779:
                                                                                                _loc22_ = _loc18_;
                                                                                                if(!(_loc27_ && param1))
                                                                                                {
                                                                                                   addr796:
                                                                                                   §§push(0.5);
                                                                                                   if(!(_loc27_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc21_.x);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc17_.x);
                                                                                                         if(_loc28_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc22_.y);
                                                                                                               if(_loc28_ || param2)
                                                                                                               {
                                                                                                                  §§push(_loc17_.y);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc27_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc28_ || param1)
                                                                                                                        {
                                                                                                                           addr849:
                                                                                                                           §§push(_loc21_.y);
                                                                                                                           if(!(_loc27_ && param2))
                                                                                                                           {
                                                                                                                              addr858:
                                                                                                                              §§push(_loc17_.y);
                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc28_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(_loc22_.x);
                                                                                                                                    if(_loc28_ || param2)
                                                                                                                                    {
                                                                                                                                       addr887:
                                                                                                                                       §§push(§§pop() - §§pop() * (§§pop() - _loc17_.x));
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr1001:
                                                                                                                                             addr1006:
                                                                                                                                             addr1002:
                                                                                                                                             §§push(§§pop() + _loc25_);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                             addr940:
                                                                                                                                             addr1007:
                                                                                                                                             §§push(_loc20_);
                                                                                                                                             §§push(_loc20_.x);
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc25_);
                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_.x);
                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc21_.x);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                         {
                                                                                                                                                            addr982:
                                                                                                                                                            §§push(§§pop() + _loc22_.x);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr989:
                                                                                                                                                            §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                            addr990:
                                                                                                                                                            if(!(_loc27_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                               §§push(_loc20_.y);
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_.y);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_.y);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr923:
                                                                                                                                                                              §§push(§§pop() + _loc22_.y);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr930:
                                                                                                                                                                              §§pop().y = §§pop() + §§pop() / 3;
                                                                                                                                                                              addr929:
                                                                                                                                                                              if(!(_loc27_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr940);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc21_ = _loc22_;
                                                                                                                                                                                 §§goto(addr1011);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr990);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr929);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr923);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr929);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr930);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1007);
                                                                                                                                                            addr988:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr988);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr982);
                                                                                                                                                }
                                                                                                                                                §§goto(addr990);
                                                                                                                                             }
                                                                                                                                             §§goto(addr989);
                                                                                                                                          }
                                                                                                                                          _loc25_ = §§pop();
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc19_);
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1001);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1006);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1001);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr887);
                                                                                                                        }
                                                                                                                        §§goto(addr1002);
                                                                                                                     }
                                                                                                                     §§goto(addr858);
                                                                                                                  }
                                                                                                                  §§goto(addr887);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr849);
                                                                                                         }
                                                                                                         §§goto(addr887);
                                                                                                      }
                                                                                                      §§goto(addr849);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1001);
                                                                                             }
                                                                                             §§goto(addr1040);
                                                                                          }
                                                                                          _loc22_ = this.§-!L§[_loc12_];
                                                                                          §§goto(addr796);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1011);
                                                                                 }
                                                                                 §§goto(addr771);
                                                                              }
                                                                              §§goto(addr763);
                                                                           }
                                                                        }
                                                                        §§goto(addr1040);
                                                                     }
                                                                     §§goto(addr755);
                                                                  }
                                                                  §§goto(addr763);
                                                               }
                                                               if(_loc28_)
                                                               {
                                                                  _loc20_.§>[§(1 / _loc19_);
                                                                  if(_loc28_)
                                                                  {
                                                                     param4.SetV(b2Math.§!v§(param3,_loc20_));
                                                                  }
                                                               }
                                                               addr1040:
                                                               return _loc19_;
                                                            }
                                                            §§goto(addr779);
                                                         }
                                                         §§goto(addr647);
                                                      }
                                                      §§goto(addr609);
                                                   }
                                                   §§goto(addr598);
                                                }
                                                §§goto(addr564);
                                             }
                                             §§goto(addr540);
                                          }
                                          addr452:
                                          §§push(1);
                                          if(!_loc27_)
                                          {
                                             addr455:
                                          }
                                          §§goto(addr460);
                                       }
                                       §§push(1);
                                       if(_loc28_ || param2)
                                       {
                                          addr451:
                                          if(§§pop() === _loc26_)
                                          {
                                             §§goto(addr452);
                                          }
                                          §§goto(addr460);
                                          §§push(2);
                                       }
                                       §§goto(addr455);
                                    }
                                    §§goto(addr451);
                                 }
                                 §§goto(addr441);
                              }
                              §§goto(addr433);
                           }
                           §§goto(addr472);
                           addr280:
                        }
                        §§goto(addr353);
                     }
                     else
                     {
                        _loc7_[_loc12_] = b2Math.§7!c§(_loc5_,this.§-!L§[_loc12_]) - _loc6_;
                        if(!(_loc27_ && param2))
                        {
                           §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                           loop1:
                           while(true)
                           {
                              _loc23_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(_loc12_);
                                 addr181:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc28_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc27_ && param2))
                                          {
                                             §§push(_loc23_);
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc12_);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc27_ && param2))
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(!(_loc27_ && param2))
                                                                        {
                                                                           _loc8_++;
                                                                           if(!_loc27_)
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr72:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc23_);
                                                                                    if(_loc27_ && param2)
                                                                                    {
                                                                                       addr103:
                                                                                       _loc11_ = §§pop();
                                                                                       if(_loc28_ || param2)
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
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr81:
                                                                                    if(!(_loc27_ && this))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr130:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc27_ && param2))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop8;
                                                                                       §§goto(addr81);
                                                                                    }
                                                                                    §§goto(addr360);
                                                                                    §§goto(addr472);
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            addr196:
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                   }
                                                   addr194:
                                                }
                                                else
                                                {
                                                   §§push(_loc11_);
                                                }
                                                §§goto(addr130);
                                             }
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr72);
                                    }
                                    break;
                                 }
                                 §§goto(addr345);
                              }
                           }
                        }
                     }
                     addr291:
                     _loc24_ = new b2MassData();
                     if(!_loc27_)
                     {
                        this.ComputeMass(_loc24_,1);
                     }
                     else if(true)
                     {
                        addr322:
                        §§push(0);
                        if(!(_loc27_ && param3))
                        {
                           return §§pop();
                        }
                        break loop12;
                     }
                     param4.SetV(b2Math.§!v§(param3,_loc24_.center));
                     return _loc24_.§#!5§;
                  }
                  §§goto(addr345);
               }
               §§goto(addr401);
            }
         }
         §§goto(addr47);
      }
      
      public function §@c§() : int
      {
         return this.§!1§;
      }
      
      public function §%Y§() : Vector.<b2Vec2>
      {
         return this.§-!L§;
      }
      
      public function §40§() : Vector.<b2Vec2>
      {
         return this.§0!O§;
      }
      
      public function §8!'§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§-!L§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§-!L§[0].y * param1.y);
            if(!(_loc6_ && this))
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || this)
               {
                  if(!(_loc6_ && this))
                  {
                     if(_loc7_ || param1)
                     {
                        if(§§pop() >= this.§!1§)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop8:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    continue loop0;
                                 }
                                 addr152:
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       addr179:
                                       if(!_loc6_)
                                       {
                                          addr118:
                                          §§push(Number(§§pop()));
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          _loc3_ = §§pop();
                                          while(_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                addr182:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr183:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          addr123:
                                          while(true)
                                          {
                                             _loc4_++;
                                             continue loop8;
                                             §§goto(addr123);
                                          }
                                          continue loop0;
                                          addr94:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr180:
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§goto(addr181);
                                             }
                                             else
                                             {
                                                §§goto(addr94);
                                             }
                                          }
                                       }
                                       addr179:
                                    }
                                    §§goto(addr118);
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || param1)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_ || this)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr179);
                                          }
                                          §§goto(addr180);
                                       }
                                       addr160:
                                    }
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr121);
                           }
                        }
                        else
                        {
                           §§push(this.§-!L§[_loc4_].x * param1.x);
                           if(!_loc6_)
                           {
                              §§push(this.§-!L§[_loc4_].y * param1.y);
                              if(!(_loc6_ && this))
                              {
                                 §§goto(addr152);
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr183);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §0!e§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:int = 0;
         §§push(this.§-!L§[0].x * param1.x);
         if(_loc7_ || this)
         {
            §§push(§§pop() + this.§-!L§[0].y * param1.y);
            if(_loc7_ || this)
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
               if(!(_loc6_ && param1))
               {
                  if(!_loc6_)
                  {
                     if(§§pop() >= this.§!1§)
                     {
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!(_loc6_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc6_)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc3_ = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          addr94:
                                          while(true)
                                          {
                                             if(_loc6_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             if(!(_loc6_ && param1))
                                             {
                                                break;
                                             }
                                             addr182:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                addr183:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr131:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§-!L§[_loc4_].y * param1.y);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_ || this)
                                             {
                                                addr161:
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                      addr180:
                                                   }
                                                }
                                                addr161:
                                             }
                                             §§goto(addr161);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                while(true)
                                                {
                                                   _loc4_++;
                                                   §§goto(addr94);
                                                   §§goto(addr131);
                                                }
                                                addr82:
                                             }
                                             §§goto(addr182);
                                          }
                                       }
                                       addr142:
                                    }
                                    §§goto(addr82);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        §§push(this.§-!L§[_loc4_].x * param1.x);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr183);
               }
               §§goto(addr184);
            }
            return this.§-!L§[_loc2_];
         }
         §§goto(addr52);
      }
      
      private function §`!n§() : Boolean
      {
         return false;
      }
      
      private function §`t§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§-!L§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§-!L§[_loc2_] = new b2Vec2();
               while(true)
               {
                  this.§0!O§[_loc2_] = new b2Vec2();
               }
               addr84:
            }
            while(_loc4_)
            {
               §§goto(addr84);
            }
            _loc2_++;
         }
      }
   }
}
