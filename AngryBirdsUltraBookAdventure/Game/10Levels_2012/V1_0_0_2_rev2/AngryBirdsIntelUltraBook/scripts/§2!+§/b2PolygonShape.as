package §2!+§
{
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §+n§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2PolygonShape))
         {
            §+n§ = new b2Mat22();
         }
      }
      
      b2internal var §#X§:b2Vec2;
      
      b2internal var §#!w§:Vector.<b2Vec2>;
      
      b2internal var §2!-§:Vector.<b2Vec2>;
      
      b2internal var §,L§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §+!?§ = b2internal::6!t;
               addr102:
               while(true)
               {
                  this.§#X§ = new b2Vec2();
                  addr95:
                  while(_loc1_)
                  {
                     this.§#!w§ = new Vector.<b2Vec2>();
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.§2!-§ = new Vector.<b2Vec2>();
            loop4:
            while(true)
            {
               §9!A§ = b2Settings.b2_polygonRadius;
               while(true)
               {
                  if(_loc1_ || _loc1_)
                  {
                     continue loop3;
                  }
                  continue loop4;
                  addr63:
                  this.§#X§.§`!5§();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break loop3;
                  }
                  §§goto(addr95);
               }
               §§goto(addr102);
            }
         }
      }
      
      public static function §9!l§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§2`§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §3Z§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && param2))
         {
            _loc3_.§<T§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §#4§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || param2)
         {
            _loc3_.§=u§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §1o§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§&!c§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §>O§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && b2PolygonShape))
         {
            _loc3_.§`_§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §-?§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && param2))
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
            if(!_loc18_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc17_)
               {
                  §§push(_loc9_.x);
                  if(!_loc18_)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr372:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     addr371:
                  }
                  while(true)
                  {
                     _loc11_ = §§pop();
                  }
                  addr373:
               }
               loop4:
               while(true)
               {
                  §§push(_loc9_.y);
                  loop5:
                  while(true)
                  {
                     §§push(_loc6_);
                     loop6:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop7:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop8:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(_loc10_.x);
                                 loop10:
                                 for(; !(_loc18_ && param2); loop15:
                                 for(; !(_loc18_ && b2PolygonShape); if(!(_loc17_ || _loc3_))
                                 {
                                    continue;
                                 },_loc4_ = §§pop(),§§goto(addr264))
                                 {
                                    if(!_loc17_)
                                    {
                                       continue loop8;
                                    }
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc18_)
                                       {
                                          if(!_loc17_)
                                          {
                                             break;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       while(!_loc18_)
                                       {
                                          _loc14_ = §§pop();
                                          loop18:
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                             loop19:
                                             while(true)
                                             {
                                                §§push(_loc14_);
                                                if(_loc17_)
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(_loc12_);
                                                      addr303:
                                                      addr239:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * _loc13_);
                                                      }
                                                      if(_loc18_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc17_ || param2))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc18_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      while(!_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc15_ = §§pop();
                                                            addr310:
                                                            while(!(_loc18_ && param2))
                                                            {
                                                               §§push(0.5);
                                                               continue loop19;
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop5;
                                                      addr306:
                                                   }
                                                }
                                                addr305:
                                                while(true)
                                                {
                                                   §§goto(addr306);
                                                }
                                             }
                                             continue loop6;
                                             addr157:
                                             if(_loc17_ || b2PolygonShape)
                                             {
                                                loop35:
                                                do
                                                {
                                                   §§push(_loc3_);
                                                   §§push(_loc16_);
                                                   if(!_loc18_)
                                                   {
                                                      §§push(§§pop() * _loc7_);
                                                   }
                                                   §§pop().§^$§(§§pop());
                                                   addr143:
                                                   loop36:
                                                   while(!(_loc18_ && param1))
                                                   {
                                                      _loc8_++;
                                                      if(!_loc17_)
                                                      {
                                                         continue;
                                                      }
                                                      addr117:
                                                      if(_loc17_ || b2PolygonShape)
                                                      {
                                                         addr124:
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               continue loop35;
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc3_.§7x§(new b2Vec2(_loc5_,_loc6_));
                                                               addr179:
                                                               while(true)
                                                               {
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        _loc3_.§7x§(_loc9_);
                                                                        break loop36;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               continue loop4;
                                                               §§goto(addr124);
                                                            }
                                                            addr264:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            §§goto(addr157);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr293);
                                                         }
                                                      }
                                                      continue loop18;
                                                      addr155:
                                                   }
                                                   while(!_loc18_)
                                                   {
                                                      _loc3_.§7x§(_loc10_);
                                                      §§goto(addr155);
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr179);
                                                }
                                                while(false);
                                                
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr356);
                                       if(!(_loc17_ || b2PolygonShape))
                                       {
                                          continue;
                                       }
                                       §§goto(addr287);
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr355);
                                 })
                                 {
                                    §§push(_loc5_);
                                    while(true)
                                    {
                                       if(_loc17_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr356:
                                             while(true)
                                             {
                                                _loc13_ = §§pop();
                                                addr357:
                                                while(true)
                                                {
                                                   §§push(_loc10_.y);
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          addr355:
                                       }
                                       else
                                       {
                                          §§goto(addr371);
                                       }
                                    }
                                 }
                                 §§goto(addr373);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr95);
         }
         if(_loc17_ || _loc3_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc18_ && b2PolygonShape))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(_loc17_ || _loc3_)
            {
               addr417:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc18_ && b2PolygonShape))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr417);
      }
      
      b2internal static function §@!S§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(_loc27_)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(!(_loc26_ && param1))
               {
                  if(_loc26_ && param2)
                  {
                     continue;
                  }
                  _loc5_[param3] = _loc5_[0];
               }
               if(_loc27_ || param1)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  addr116:
               }
               _loc4_++;
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr116);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(!(_loc26_ && b2PolygonShape))
         {
            §§push(1);
            if(!_loc26_)
            {
               _loc4_ = §§pop();
               if(_loc27_ || param2)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1168:
               }
               §§goto(addr1171);
            }
            loop2:
            for(; §§pop() <= param3; §§goto(addr1168))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(_loc27_)
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
                                                while(!_loc26_)
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
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
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
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                loop30:
                                                                                                for(; _loc27_ || param1; if(_loc26_ && param2)
                                                                                                {
                                                                                                   continue;
                                                                                                },if(_loc26_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                },if(!_loc27_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                },§§goto(addr756))
                                                                                                {
                                                                                                   _loc14_ = §§pop();
                                                                                                   loop31:
                                                                                                   for(; _loc27_; while(_loc27_ || param3)
                                                                                                   {
                                                                                                      §§goto(addr445);
                                                                                                   })
                                                                                                   {
                                                                                                      §§push(-Number.MAX_VALUE);
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop33:
                                                                                                         while(_loc27_)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                               while(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  continue loop14;
                                                                                                                  loop84:
                                                                                                                  while(!(_loc26_ && param3))
                                                                                                                  {
                                                                                                                     _loc21_ = §§pop();
                                                                                                                     loop85:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr768:
                                                                                                                        §§push(_loc11_ * _loc19_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr774:
                                                                                                                           §§push(§§pop() + _loc12_ * _loc20_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              addr777:
                                                                                                                              if(!(_loc26_ && param2))
                                                                                                                              {
                                                                                                                                 addr784:
                                                                                                                                 if(_loc27_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop86:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                       addr735:
                                                                                                                                       §§push(_loc21_);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       loop87:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             loop72:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc22_);
                                                                                                                                                loop73:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc27_ || param1))
                                                                                                                                                   {
                                                                                                                                                      continue loop86;
                                                                                                                                                   }
                                                                                                                                                   addr715:
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      continue loop87;
                                                                                                                                                   }
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc27_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr731:
                                                                                                                                                            _loc14_ = Number(§§pop());
                                                                                                                                                            addr679:
                                                                                                                                                            if(_loc26_ && param1)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr687:
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr690:
                                                                                                                                                                  if(_loc27_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr699:
                                                                                                                                                                     _loc15_ = Number(_loc21_);
                                                                                                                                                                     addr698:
                                                                                                                                                                     loop77:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                    addr445:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       if(_loc26_ && b2PolygonShape)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() >= param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(!(_loc26_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                loop42:
                                                                                                                                                                                                while(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ || param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc26_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          while(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                                                                                                                             while(!(_loc26_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0.95);
                                                                                                                                                                                                                                                while(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      addr550:
                                                                                                                                                                                                                                                      while(_loc27_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc27_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  while(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr602:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              while(_loc27_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(param1.R);
                                                                                                                                                                                                                                                                                    loop47:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().col1);
                                                                                                                                                                                                                                                                                       loop48:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                                                                          loop49:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                             addr437:
                                                                                                                                                                                                                                                                                             addr662:
                                                                                                                                                                                                                                                                                             while(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(param1.R);
                                                                                                                                                                                                                                                                                                loop51:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().col1);
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop49;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop77;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(param1.R);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                                                                                                                      addr389:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr690);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop77;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr662:
                                                                                                                                                                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop34;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr732:
                                                                                                                                                                                                                                                                                             addr732:
                                                                                                                                                                                                                                                                                             loop75:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr677:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr679);
                                                                                                                                                                                                                                                                                                   continue loop75;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr804:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   addr805:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr808:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + _loc9_ * _loc20_);
                                                                                                                                                                                                                                                                                                      break loop85;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop13;
                                                                                                                                                                                                                                                                              addr602:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr858:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     break loop77;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr647:
                                                                                                                                                                                                                                                                  if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop73;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr662);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr805);
                                                                                                                                                                                                                                                                  addr583:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr610);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1167);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr808);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr774);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr774);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr637:
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr638:
                                                                                                                                                                                                                                             if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr646:
                                                                                                                                                                                                                                                §§goto(addr647);
                                                                                                                                                                                                                                                §§push(Number(_loc22_));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr926:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc17_++;
                                                                                                                                                                                                                                          continue loop77;
                                                                                                                                                                                                                                          addr530:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr735);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr698);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr538);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr679);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr602);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr774);
                                                                                                                                                                                                                     addr509:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr768);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr774);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               addr300:
                                                                                                                                                                                                               if(_loc26_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop63:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           loop61:
                                                                                                                                                                                                                           for(; _loc27_; if(_loc26_ && param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           },if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr181);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr212);
                                                                                                                                                                                                                           },§§goto(addr583))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc23_ = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0.5);
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop61;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr222:
                                                                                                                                                                                                                                       if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr232:
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr646);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr768);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr602);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr662);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr401);
                                                                                                                                                                                                                                    addr246:
                                                                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                                                                if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop63;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                loop58:
                                                                                                                                                                                                                                                while(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                                                                   for(; !_loc26_; §§push(_loc16_),if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   },if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr212:
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop12;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr222);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr232);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr509);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   },§§goto(addr549))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr300);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr512);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr546);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                         addr181:
                                                                                                                                                                                                                                                         if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr715);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr530);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr550);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr808);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr808);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                                                                             addr266:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(param1.R);
                                                                                                                                                                                                                                          §§goto(addr988);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr638);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr369);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop2;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr731);
                                                                                                                                                                                                                              §§goto(addr732);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr538);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop42;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr699);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr327);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr687);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr774);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr602);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr512);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr742:
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr735);
                                                                                                                                                                                             §§goto(addr735);
                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr266);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(!(_loc26_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr804);
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop85;
                                                                                                                                                                                                addr847:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc27_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                                                                       §§goto(addr858);
                                                                                                                                                                                       addr631:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr896:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr869);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop25;
                                                                                                                                                                        §§goto(addr784);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop33;
                                                                                                                                                                     addr830:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop85;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr637);
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr646);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr805);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr804);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr732);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr677);
                                                                                                                                                }
                                                                                                                                                continue loop86;
                                                                                                                                             }
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                          §§goto(addr741);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr792:
                                                                                                                                 }
                                                                                                                                 §§goto(addr830);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop84;
                                                                                                                        }
                                                                                                                        §§goto(addr792);
                                                                                                                     }
                                                                                                                     while(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        continue loop84;
                                                                                                                        §§goto(addr777);
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop26;
                                                                                                      }
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
                                                   }
                                                }
                                                continue loop7;
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
               §§goto(addr926);
            }
         }
         addr1171:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc3_)
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
            if(_loc4_)
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
            if(_loc4_ || param1)
            {
               this.§#X§.SetV(_loc2_.§#X§);
               loop0:
               while(true)
               {
                  this.§,L§ = _loc2_.§,L§;
                  while(true)
                  {
                     this.§?e§(this.§,L§);
                     addr120:
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               _loc3_ = 0;
               if(_loc4_ || _loc2_)
               {
                  break;
               }
               §§goto(addr120);
            }
            while(true)
            {
               if(_loc3_ < this.§,L§)
               {
                  this.§#!w§[_loc3_].SetV(_loc2_.§#!w§[_loc3_]);
                  loop5:
                  while(true)
                  {
                     addr68:
                     while(true)
                     {
                        this.§2!-§[_loc3_].SetV(_loc2_.§2!-§[_loc3_]);
                        if(!_loc4_)
                        {
                           break;
                        }
                        _loc3_++;
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
               }
            }
         }
      }
      
      public function §2`§(param1:Array, param2:Number = 0) : void
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
         if(_loc8_ || param1)
         {
            this.§<T§(_loc3_,param2);
         }
      }
      
      public function §<T§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc8_ || param2)
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
                     addr194:
                     if(_loc7_ && param2)
                     {
                        continue;
                     }
                     addr201:
                     loop5:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           §§push(this.§,L§);
                           loop6:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 this.§#!w§[_loc3_].SetV(param1[_loc3_]);
                                 break;
                              }
                              while(true)
                              {
                                 if(_loc7_ && param2)
                                 {
                                    break loop6;
                                 }
                                 §§push(0);
                                 addr137:
                                 if(_loc7_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(_loc3_);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(1);
                                    if(!(_loc7_ && param1))
                                    {
                                       continue loop6;
                                    }
                                    addr81:
                                    addr80:
                                    §§push(int(§§pop() + §§pop()));
                                    if(_loc8_)
                                    {
                                       addr84:
                                       if(!(_loc7_ && param1))
                                       {
                                          if(!_loc7_)
                                          {
                                             addr102:
                                             §§push(int(§§pop()));
                                             if(_loc8_ || param1)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc7_ && this))
                                                {
                                                   addr118:
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         addr324:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr325:
                                                            while(true)
                                                            {
                                                               §§push(this.§,L§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        this.§#X§ = §-?§(this.§#!w§,this.§,L§);
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr170:
                                                                  addr126:
                                                                  §§push(_loc3_);
                                                                  while(_loc8_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr130:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§goto(addr137);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 break loop11;
                                                                              }
                                                                              addr171:
                                                                           }
                                                                        }
                                                                        addr77:
                                                                        §§push(1);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr80);
                                                                        §§goto(addr84);
                                                                     }
                                                                     §§goto(addr102);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     §§goto(addr171);
                                                                  }
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   _loc6_ = b2Math.§54§(this.§#!w§[_loc5_],this.§#!w§[_loc4_]);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      b2Settings.b2Assert(_loc6_.§ !W§() > Number.MIN_VALUE);
                                                      while(true)
                                                      {
                                                         this.§2!-§[_loc3_].SetV(b2Math.§^!P§(_loc6_,1));
                                                         loop18:
                                                         for(; !(_loc7_ && this); while(true)
                                                         {
                                                            _loc3_++;
                                                            if(_loc7_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc7_ && this)
                                                            {
                                                               continue loop18;
                                                            }
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr281);
                                                         },§§goto(addr324))
                                                         {
                                                            while(true)
                                                            {
                                                               this.§2!-§[_loc3_].Normalize();
                                                               continue loop18;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr287);
                                                }
                                                addr338:
                                                return;
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr77);
                              }
                              continue loop5;
                           }
                           _loc3_++;
                           continue;
                        }
                        §§goto(addr170);
                     }
                     addr201:
                  }
                  addr242:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop2:
                  do
                  {
                     this.§,L§ = param2;
                     while(true)
                     {
                        this.§?e§(param2);
                        while(_loc8_ || param2)
                        {
                           _loc3_ = 0;
                           if(_loc8_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!_loc8_);
                  
                  §§goto(addr194);
                  §§goto(addr242);
               }
               §§goto(addr201);
            }
            §§goto(addr241);
         }
         §§goto(addr201);
      }
      
      public function §=u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,L§ = 4;
         }
         loop0:
         while(true)
         {
            this.§?e§(4);
            loop1:
            while(true)
            {
               this.§#!w§[0].Set(-param1,-param2);
               loop2:
               do
               {
                  this.§#!w§[1].Set(param1,-param2);
                  while(true)
                  {
                     this.§#!w§[2].Set(param1,param2);
                     continue loop1;
                     loop6:
                     while(!(_loc4_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           this.§2!-§[1].Set(1,0);
                           loop7:
                           while(!_loc4_)
                           {
                              this.§2!-§[2].Set(0,1);
                              loop8:
                              do
                              {
                                 this.§2!-§[3].Set(-1,0);
                                 while(!_loc4_)
                                 {
                                    this.§#X§.§`!5§();
                                    if(!_loc4_)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 continue loop7;
                              }
                              while(!(_loc3_ || _loc3_));
                              
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop6;
                           }
                           while(!(_loc4_ && _loc3_))
                           {
                              this.§2!-§[0].Set(0,-1);
                              continue loop6;
                           }
                           continue loop1;
                           addr114:
                        }
                        continue loop0;
                     }
                  }
               }
               while(!(_loc3_ || _loc3_));
               
               return;
            }
         }
      }
      
      public function §&!c§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§,L§ = 4;
            while(true)
            {
               this.§?e§(4);
               loop1:
               while(true)
               {
                  this.§#!w§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§#!w§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§#!w§[2].Set(param1,param2);
                        addr119:
                        while(true)
                        {
                           this.§#!w§[3].Set(-param1,param2);
                           addr108:
                           while(_loc7_)
                           {
                              this.§2!-§[0].Set(0,-1);
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      public function §`_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§,L§ = 2;
            loop0:
            while(true)
            {
               this.§?e§(2);
               loop1:
               while(true)
               {
                  this.§#!w§[0].SetV(param1);
                  while(true)
                  {
                     this.§#!w§[1].SetV(param2);
                     while(_loc3_)
                     {
                        §§push(this.§#X§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           if(!(_loc4_ && param1))
                           {
                              §§push(param1.x);
                              loop5:
                              while(true)
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr182:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                    addr125:
                                    §§push(param2.y);
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           addr183:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop4;
                           }
                        }
                        loop11:
                        for(; _loc3_ || _loc3_; if(!(_loc3_ || this))
                        {
                           continue;
                        },§§goto(addr49))
                        {
                           this.§2!-§[0].Normalize();
                           while(true)
                           {
                              this.§2!-§[1].x = -this.§2!-§[0].x;
                              loop13:
                              while(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr146);
                                    while(true)
                                    {
                                       this.§2!-§[1].y = -this.§2!-§[0].y;
                                       if(!_loc4_)
                                       {
                                          continue loop11;
                                       }
                                       continue loop13;
                                    }
                                 }
                                 continue loop0;
                                 return;
                              }
                           }
                        }
                     }
                     continue loop1;
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     this.§2!-§[0] = b2Math.§^!P§(b2Math.§54§(param2,param1),1);
                     §§goto(addr103);
                  }
               }
            }
         }
         §§goto(addr73);
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
            if(!(_loc12_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(!(_loc12_ && this))
         {
            §§push(§§pop() - param1.position.y);
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc12_ && param2))
         {
            §§push(_loc4_.col1.x);
            if(!_loc12_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc12_ && _loc3_))
               {
                  §§push(_loc6_);
                  if(_loc11_)
                  {
                     addr87:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(_loc12_)
                     {
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        §§push(_loc4_.col2.x);
                        if(_loc11_ || _loc3_)
                        {
                           §§goto(addr128);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_)
                        {
                           addr128:
                           §§goto(addr129);
                        }
                        addr129:
                        §§push(§§pop() * §§pop());
                        if(_loc11_ || _loc3_)
                        {
                           §§push(_loc6_);
                           if(!(_loc12_ && _loc3_))
                           {
                              §§push(§§pop() * _loc4_.col2.y);
                           }
                        }
                        var _loc8_:Number = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§,L§)
                           {
                              return true;
                           }
                           _loc3_ = this.§#!w§[_loc9_];
                           if(_loc11_ || param1)
                           {
                              §§push(_loc7_);
                              if(!(_loc12_ && param2))
                              {
                                 §§push(_loc3_.x);
                                 if(_loc11_ || this)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc11_)
                                       {
                                          _loc5_ = §§pop();
                                          if(!(_loc12_ && param2))
                                          {
                                             addr188:
                                             §§push(_loc8_);
                                             if(!(_loc12_ && param2))
                                             {
                                                addr198:
                                                §§push(§§pop() - _loc3_.y);
                                                if(_loc11_)
                                                {
                                                   addr202:
                                                   _loc6_ = Number(§§pop());
                                                }
                                             }
                                             §§goto(addr202);
                                          }
                                          _loc3_ = this.§2!-§[_loc9_];
                                          if(_loc11_ || param2)
                                          {
                                             §§push(_loc3_.x);
                                             if(_loc11_ || this)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc12_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc12_ && _loc3_))
                                                   {
                                                      §§push(_loc3_.y);
                                                      if(_loc11_ || param1)
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                         if(!_loc12_)
                                                         {
                                                            addr249:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  addr270:
                                                                  §§push(§§pop());
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr273:
                                                                     _loc10_ = §§pop();
                                                                     addr274:
                                                                     §§push(0);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr273);
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr188);
                        }
                        return false;
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr87);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr87);
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
         if(_loc20_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§&y§);
         if(!(_loc21_ && this))
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
               if(!(_loc21_ && param3))
               {
                  §§push(param3.position);
                  if(_loc20_ || param3)
                  {
                     §§push(§§pop().x);
                     if(!(_loc21_ && param2))
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc21_ && param3))
                        {
                           addr90:
                           §§push(Number(§§pop()));
                           if(!(_loc21_ && this))
                           {
                              addr98:
                              _loc6_ = §§pop();
                              if(!(_loc21_ && param1))
                              {
                                 addr108:
                                 §§push(param2.p1.y);
                                 if(!(_loc21_ && param1))
                                 {
                                    addr119:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc21_ && param2))
                                    {
                                       addr127:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc7_ = §§pop();
                                 }
                                 §§goto(addr127);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(_loc20_)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc20_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc20_ || param1)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc21_)
                                       {
                                          addr156:
                                          §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                          if(!_loc21_)
                                          {
                                             addr159:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(_loc6_);
                                    if(_loc20_)
                                    {
                                       §§push(_loc8_.col2.x);
                                       if(!(_loc21_ && param2))
                                       {
                                          addr197:
                                          §§push(§§pop() * §§pop());
                                          if(_loc20_ || param3)
                                          {
                                             §§push(_loc7_);
                                             if(_loc20_)
                                             {
                                                §§push(§§pop() * _loc8_.col2.y);
                                             }
                                          }
                                          var _loc11_:Number = §§pop();
                                          if(_loc20_)
                                          {
                                             §§push(param2.p2);
                                             if(_loc20_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc21_ && param1))
                                                {
                                                   §§push(param3.position);
                                                   if(_loc20_ || this)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc21_ && param1))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc21_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc20_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc20_ || param2)
                                                               {
                                                                  addr246:
                                                                  §§push(param2.p2.y);
                                                                  if(_loc20_ || param2)
                                                                  {
                                                                     addr257:
                                                                     §§push(§§pop() - param3.position.y);
                                                                     if(!(_loc21_ && param3))
                                                                     {
                                                                        addr266:
                                                                        _loc7_ = Number(§§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr266);
                                                               }
                                                               _loc8_ = param3.R;
                                                               §§push(_loc6_);
                                                               if(_loc20_)
                                                               {
                                                                  §§push(_loc8_.col1.x);
                                                                  if(_loc20_ || param3)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           addr295:
                                                                           §§push(§§pop() * _loc8_.col1.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc20_ || param1)
                                                                        {
                                                                           addr307:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc6_);
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        §§push(_loc8_.col2.x);
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc20_)
                                                                           {
                                                                              addr330:
                                                                              §§push(_loc7_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr333:
                                                                                 §§push(§§pop() * _loc8_.col2.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc20_ || param3)
                                                                              {
                                                                                 addr345:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 §§push(§§pop() - _loc10_);
                                                                                 if(!(_loc21_ && this))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc14_:* = §§pop();
                                                                              §§push(_loc13_);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(§§pop() - _loc11_);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr373:
                                                                                    §§push(Number(§§pop()));
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
                                                                                       §§push(this.§,L§);
                                                                                       if(_loc20_ || param2)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             addr892:
                                                                                             if(_loc20_ || param3)
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                break;
                                                                                             }
                                                                                             _loc8_ = param3.R;
                                                                                             _loc9_ = this.§2!-§[_loc16_];
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                §§push(param1.normal);
                                                                                                loop49:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   addr1022:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1023:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         addr1025:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr1031:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     addr1033:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1034:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1030:
                                                                                                            }
                                                                                                            addr1035:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop49;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1017);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push((_loc9_ = this.§#!w§[_loc17_]).x);
                                                                                             if(!(_loc21_ && this))
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc20_ || param2)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc21_ && param1))
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(_loc20_ || param2)
                                                                                                            {
                                                                                                               addr432:
                                                                                                               §§push(§§pop() - _loc11_);
                                                                                                               if(!(_loc21_ && param2))
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  _loc7_ = Number(§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                         }
                                                                                                         §§push((_loc9_ = this.§2!-§[_loc17_]).x);
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc20_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc21_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc21_ && param2))
                                                                                                                              {
                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.x);
                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                    {
                                                                                                                                       addr830:
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       loop48:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop42:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.y);
                                                                                                                                             loop39:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                loop40:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc21_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!(_loc21_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                  loop2:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     addr857:
                                                                                                                                                                     loop28:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           loop20:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              loop15:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                 loop16:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    loop11:
                                                                                                                                                                                    while(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop13:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          loop14:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                             loop21:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                if(!(_loc21_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr778:
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc20_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr787:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                            addr788:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop11;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr862);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr778);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                   addr779:
                                                                                                                                                                                                }
                                                                                                                                                                                                loop37:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc21_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                   loop38:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop42;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr809:
                                                                                                                                                                                                         loop31:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                            addr810:
                                                                                                                                                                                                            loop22:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                               loop23:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc21_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop5:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                        if(_loc20_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc21_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop31;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc21_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr572:
                                                                                                                                                                                                                                    §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop32:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(false);
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr788);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop43:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc20_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr668:
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     loop9:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc21_ && param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop13;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           if(_loc21_ && param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop9;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc20_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr860:
                                                                                                                                                                                                                                                                                       addr861:
                                                                                                                                                                                                                                                                                       while(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr860:
                                                                                                                                                                                                                                                                                       addr862:
                                                                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                                                                                                                       addr860:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr674:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc21_ && param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             while(!(_loc21_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc20_ || this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr704:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr703:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr859:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr860);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr859:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr685:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr685);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr674:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr860);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr779);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr787);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr674);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr674);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr668);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr727:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop5;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr673);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr731);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr862);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr672);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(_loc20_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr858:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr859);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                                                                   addr602:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr859);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc17_++;
                                                                                                                                                                                                                                                if(!(_loc21_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc20_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc21_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop32;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr739);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr861);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr704);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr602);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                                                                          addr581:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr719:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc21_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr727);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr674);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr572);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr673);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr685);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop42;
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
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr709:
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr797);
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr810);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr858);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr860);
                                                                                                                                                            }
                                                                                                                                                            addr847:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr859);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr847);
                                                                                                                                 }
                                                                                                                                 §§goto(addr810);
                                                                                                                              }
                                                                                                                              §§goto(addr703);
                                                                                                                           }
                                                                                                                           §§goto(addr808);
                                                                                                                        }
                                                                                                                        §§goto(addr857);
                                                                                                                     }
                                                                                                                     §§goto(addr786);
                                                                                                                  }
                                                                                                                  §§goto(addr857);
                                                                                                               }
                                                                                                               §§goto(addr809);
                                                                                                            }
                                                                                                            §§goto(addr581);
                                                                                                         }
                                                                                                         §§goto(addr830);
                                                                                                      }
                                                                                                      §§goto(addr442);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                       }
                                                                                       addr886:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          return false;
                                                                                       }
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          param1.fraction = _loc4_;
                                                                                       }
                                                                                       §§goto(addr892);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr886);
                                                                                 §§push(0);
                                                                              }
                                                                              §§goto(addr373);
                                                                           }
                                                                           §§goto(addr345);
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                   }
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr266);
                                             }
                                          }
                                          §§goto(addr246);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc20_ || param2)
                                       {
                                       }
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr90);
            }
         }
         §§goto(addr108);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§#!w§[0];
         §§push(param2.position.x);
         if(!(_loc12_ && this))
         {
            §§push(_loc3_.col1.x);
            if(!(_loc12_ && _loc3_))
            {
               §§push(_loc4_.x);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc13_)
                  {
                     addr77:
                     §§push(_loc3_.col2.x);
                     if(!(_loc12_ && param1))
                     {
                        addr73:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc13_ || param1)
                     {
                        addr85:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(param2.position.y);
                     if(_loc13_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc13_)
                        {
                           §§push(_loc4_.x);
                           if(_loc13_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc13_)
                              {
                                 addr118:
                                 §§push(_loc3_.col2.y);
                                 if(!_loc12_)
                                 {
                                    addr114:
                                    §§push(§§pop() * _loc4_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(!_loc12_)
                                 {
                                    addr121:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
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
                                 loop0:
                                 while(_loc9_ < this.§,L§)
                                 {
                                    _loc4_ = this.§#!w§[_loc9_];
                                    if(_loc13_)
                                    {
                                       §§push(param2.position);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(_loc3_.col1);
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr512:
                                                addr446:
                                                while(true)
                                                {
                                                   §§push(_loc4_.x);
                                                   if(!_loc12_)
                                                   {
                                                      addr517:
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr519:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                         }
                                                      }
                                                      addr517:
                                                   }
                                                   addr520:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.y);
                                                      addr522:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr523:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr524:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col1);
                                                   if(_loc12_ && this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop().y);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_.x);
                                                      if(!_loc12_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.col2);
                                                               if(!(_loc12_ && param2))
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc13_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.y);
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              if(_loc13_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    while(!_loc12_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          addr498:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr526:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_ = §§pop();
                                                                                       continue loop1;
                                                                                    }
                                                                                    if(!(_loc13_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       while(_loc13_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             while(!_loc12_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop37:
                                                                                                while(!(_loc12_ && param2))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop39:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         addr354:
                                                                                                         while(_loc13_ || _loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  if(!(_loc13_ || param1))
                                                                                                                  {
                                                                                                                     continue loop37;
                                                                                                                  }
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     §§goto(addr273);
                                                                                                                  }
                                                                                                                  §§goto(addr270);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr221:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr258:
                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr265);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     continue loop39;
                                                                                                                  }
                                                                                                                  if(!(_loc12_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr266:
                                                                                                                           _loc8_ = Number(§§pop());
                                                                                                                           addr265:
                                                                                                                           do
                                                                                                                           {
                                                                                                                              _loc9_++;
                                                                                                                           }
                                                                                                                           while(_loc12_ && param1);
                                                                                                                           
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc13_ || param2))
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc12_ && param2))
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    addr525:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr439);
                                                                                                                                 }
                                                                                                                                 §§goto(addr526);
                                                                                                                              }
                                                                                                                              continue loop13;
                                                                                                                              addr308:
                                                                                                                           }
                                                                                                                           if(!(_loc12_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           addr387:
                                                                                                                           while(_loc13_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr390:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr391:
                                                                                                                                    loop51:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr403:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr404);
                                                                                                                                          continue loop51;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr498);
                                                                                                                           §§goto(addr404);
                                                                                                                           addr267:
                                                                                                                        }
                                                                                                                        §§goto(addr427);
                                                                                                                     }
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                                  §§goto(addr391);
                                                                                                                  §§goto(addr265);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr426);
                                                                                                         }
                                                                                                         §§goto(addr405);
                                                                                                      }
                                                                                                      addr340:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc12_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§goto(addr403);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr404);
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                addr345:
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             §§goto(addr415);
                                                                                             addr342:
                                                                                          }
                                                                                          §§goto(addr308);
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                       addr305:
                                                                                    }
                                                                                    §§goto(addr512);
                                                                                 }
                                                                              }
                                                                              §§goto(addr523);
                                                                           }
                                                                           addr485:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr522);
                                                                     addr475:
                                                                  }
                                                                  §§goto(addr485);
                                                               }
                                                               break;
                                                               if(!(_loc13_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr393);
                                                                        §§push(_loc11_);
                                                                     }
                                                                     §§goto(addr387);
                                                                     addr199:
                                                                     if(!(_loc13_ || param2))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 §§goto(addr258);
                                                                              }
                                                                              §§goto(addr425);
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc11_);
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc13_ || param1)
                                                                                 {
                                                                                    §§goto(addr258);
                                                                                 }
                                                                                 §§goto(addr266);
                                                                              }
                                                                              §§goto(addr437);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                               }
                                                               §§goto(addr517);
                                                            }
                                                            §§goto(addr519);
                                                         }
                                                         §§goto(addr520);
                                                      }
                                                      §§goto(addr475);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr525);
                                       }
                                    }
                                    §§goto(addr389);
                                 }
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(param1.§>!6§);
                                    if(_loc13_)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc12_ && param2))
                                       {
                                          §§push(§§pop() - b2internal::9!A);
                                          if(!_loc12_)
                                          {
                                             addr555:
                                             §§pop().x = §§pop();
                                             if(!(_loc12_ && param1))
                                             {
                                                addr609:
                                                §§push(param1.§>!6§);
                                                §§push(_loc6_);
                                                if(_loc13_ || param1)
                                                {
                                                   addr617:
                                                   §§push(§§pop() - b2internal::9!A);
                                                }
                                                §§pop().y = §§pop();
                                                loop52:
                                                while(true)
                                                {
                                                   §§push(param1.§8!X§);
                                                   addr600:
                                                   loop53:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr601:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop() + b2internal::9!A;
                                                         addr604:
                                                         while(!_loc12_)
                                                         {
                                                            continue loop53;
                                                         }
                                                         continue loop52;
                                                      }
                                                   }
                                                }
                                                addr563:
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§8!X§);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc12_)
                                                   {
                                                      §§pop().y = §§pop() + b2internal::9!A;
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr604);
                                                   }
                                                   §§goto(addr601);
                                                }
                                                §§goto(addr600);
                                             }
                                          }
                                          §§goto(addr617);
                                       }
                                       §§goto(addr555);
                                    }
                                    §§goto(addr609);
                                 }
                                 §§goto(addr563);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr77);
               }
               §§goto(addr73);
            }
            §§goto(addr77);
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
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(!_loc27_)
         {
            if(this.§,L§ != 2)
            {
               §§push(0);
               if(_loc28_)
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
               if(_loc28_)
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
               if(!(_loc27_ && param2))
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
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§,L§)
               {
                  _loc11_ = this.§#!w§[_loc10_];
                  if(!_loc27_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§,L§ ? this.§#!w§[int(_loc10_ + 1)] : this.§#!w§[0];
                     if(_loc28_)
                     {
                        §§push(_loc11_.x);
                        while(true)
                        {
                           §§push(_loc7_);
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc11_.y);
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
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
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
                                                                  _loc15_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr1107:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        addr1106:
                                                                     }
                                                                     while(_loc28_)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              while(!_loc27_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(!(_loc27_ && param1))
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       addr1095:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr1096:
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
                                                                                                   _loc17_ = §§pop();
                                                                                                   addr1099:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      addr1068:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc17_);
                                                                                                         continue loop23;
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
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(!(_loc28_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         _loc22_ = §§pop();
                                                         §§goto(addr945);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc27_ && param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr904);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr284);
                  }
                  §§goto(addr226);
               }
               if(!_loc27_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!_loc27_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§@K§ = §§pop();
                  if(_loc28_ || param2)
                  {
                     §§push(_loc3_);
                     loop131:
                     while(true)
                     {
                        §§push(1);
                        loop132:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop133:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop134:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop135:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc27_ && _loc3_))
                                          {
                                             if(!(_loc28_ || this))
                                             {
                                                break;
                                             }
                                             §§push(1);
                                             if(_loc27_ && _loc3_)
                                             {
                                                continue loop132;
                                             }
                                             §§push(_loc5_);
                                             if(!(_loc28_ || _loc3_))
                                             {
                                                continue loop133;
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(!_loc28_)
                                             {
                                                continue loop134;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc28_)
                                             {
                                                if(!(_loc28_ || param2))
                                                {
                                                   continue loop135;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          if(_loc28_)
                                          {
                                             _loc4_ = §§pop();
                                             loop138:
                                             while(!(_loc27_ && param1))
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   §§push(param2);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(§§pop() * _loc6_);
                                                   }
                                                   §§pop().§8`§ = §§pop();
                                                   if(!(_loc27_ && _loc3_))
                                                   {
                                                      if(_loc28_ || _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop138;
                                                   }
                                                }
                                                return;
                                             }
                                             continue;
                                          }
                                          continue loop131;
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
                     param1.center.Set(_loc3_,_loc4_);
                  }
               }
               §§goto(addr1189);
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
               if(!(_loc27_ && param1))
               {
                  §§push(§§pop() * (this.§#!w§[0].x + this.§#!w§[1].x));
               }
               loop143:
               while(true)
               {
                  §§pop().x = §§pop();
                  loop144:
                  while(true)
                  {
                     §§push(param1.center);
                     if(!(_loc28_ || param2))
                     {
                        break;
                     }
                     §§push(0.5);
                     if(!(_loc27_ && param2))
                     {
                        if(!_loc28_)
                        {
                           continue loop143;
                        }
                        §§push(§§pop() * (this.§#!w§[0].y + this.§#!w§[1].y));
                     }
                     §§pop().y = §§pop();
                     loop145:
                     while(true)
                     {
                        param1.§@K§ = 0;
                        while(true)
                        {
                           if(_loc28_)
                           {
                              continue loop141;
                           }
                           continue loop145;
                           addr92:
                           param1.§8`§ = 0;
                           if(!(_loc27_ && param1))
                           {
                              if(_loc28_ || param2)
                              {
                                 return;
                              }
                              continue loop144;
                           }
                        }
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
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc12_:* = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§;%§(param3.R,param1);
         §§push(param2);
         if(_loc27_ || param1)
         {
            §§push(§§pop() - b2Math.§'l§(param1,param3.position));
            if(!_loc28_)
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            var _loc8_:int = 0;
            var _loc9_:* = -1;
            var _loc10_:* = -1;
            var _loc11_:* = false;
            if(!_loc28_)
            {
               _loc12_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(!_loc28_)
               {
                  §§push(this.§,L§);
                  if(_loc27_ || param3)
                  {
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           _loc7_[_loc12_] = b2Math.§'l§(_loc5_,this.§#!w§[_loc12_]) - _loc6_;
                           loop2:
                           while(true)
                           {
                              §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                              if(!(_loc28_ && this))
                              {
                                 _loc23_ = §§pop();
                                 if(_loc27_)
                                 {
                                    §§push(_loc12_);
                                    if(!(_loc28_ && param3))
                                    {
                                       §§push(0);
                                       if(!_loc27_)
                                       {
                                          break;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc28_ && this))
                                          {
                                             §§push(_loc23_);
                                             loop3:
                                             for(; !§§pop(); if(_loc28_ && param1)
                                             {
                                                continue;
                                             },if(§§pop())
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc27_ || param3)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc27_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc27_)
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(_loc27_)
                                                            {
                                                               _loc8_++;
                                                               if(_loc27_)
                                                               {
                                                                  if(_loc27_)
                                                                  {
                                                                     if(_loc28_)
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     do
                                                                     {
                                                                        §§push(_loc23_);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              if(_loc27_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                     while(false);
                                                                     
                                                                     continue loop0;
                                                                     addr78:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc8_++;
                                                                     addr146:
                                                                     while(!_loc28_)
                                                                     {
                                                                        addr148:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr78);
                                                                           §§goto(addr148);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr200:
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         break;
                                                      }
                                                      addr460:
                                                      §§goto(addr451);
                                                      §§push(§§pop() % this.§,L§);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr316);
                                             },§§goto(addr78))
                                             {
                                                §§push(_loc11_);
                                                if(!_loc28_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr257);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc11_);
                                                if(_loc27_ || param3)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr112);
                                                }
                                                §§goto(addr257);
                                             }
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr78);
                                    }
                                    §§goto(addr304);
                                 }
                                 addr360:
                                 §§goto(addr384);
                              }
                           }
                           continue;
                        }
                        if(!_loc28_)
                        {
                           §§push(_loc8_);
                           if(_loc27_ || this)
                           {
                              addr395:
                              var _loc26_:* = §§pop();
                              if(!(_loc28_ && param3))
                              {
                                 §§push(0);
                                 if(_loc27_ || this)
                                 {
                                    §§push(_loc26_);
                                    if(!_loc28_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc27_ || param2)
                                          {
                                             addr422:
                                             §§push(0);
                                             if(!_loc27_)
                                             {
                                             }
                                             addr444:
                                             if(!_loc28_)
                                             {
                                                switch(§§pop())
                                                {
                                                   case 1:
                                                      addr307:
                                                      §§push(_loc9_);
                                                      if(_loc27_ || this)
                                                      {
                                                         addr316:
                                                         §§push(-1);
                                                         if(_loc27_ || param3)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  §§push(this.§,L§);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§goto(addr395);
                                                                  }
                                                                  addr336:
                                                                  §§push(§§pop() - 1);
                                                                  if(!(_loc28_ && param1))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     addr376:
                                                                     _loc10_ = §§pop();
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        addr384:
                                                                     }
                                                                     §§push(_loc9_);
                                                                     if(_loc27_)
                                                                     {
                                                                        addr451:
                                                                        addr452:
                                                                        §§push(§§pop() + 1);
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr464:
                                                                        var _loc13_:int = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc27_ || param1)
                                                                           {
                                                                              §§push(§§pop() % this.§,L§);
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        §§push(0 - _loc7_[_loc9_]);
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                                           if(_loc27_ || param3)
                                                                           {
                                                                              addr519:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           §§push(0 - _loc7_[_loc10_]);
                                                                           if(_loc27_ || param2)
                                                                           {
                                                                              §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr543:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc16_:* = §§pop();
                                                                              §§push(§§findproperty(b2Vec2));
                                                                              §§push(this.§#!w§[_loc9_].x * (1 - _loc15_));
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(this.§#!w§[_loc13_].x * _loc15_);
                                                                                 if(_loc27_ || param1)
                                                                                 {
                                                                                    addr572:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(this.§#!w§[_loc9_].y * (1 - _loc15_));
                                                                                    if(_loc27_ || param3)
                                                                                    {
                                                                                       addr588:
                                                                                       §§push(§§pop() + this.§#!w§[_loc13_].y * _loc15_);
                                                                                    }
                                                                                    var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                    §§push(§§findproperty(b2Vec2));
                                                                                    §§push(this.§#!w§[_loc10_].x * (1 - _loc16_));
                                                                                    if(!(_loc28_ && this))
                                                                                    {
                                                                                       §§push(this.§#!w§[_loc14_].x * _loc16_);
                                                                                       if(_loc27_ || param3)
                                                                                       {
                                                                                          addr631:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(this.§#!w§[_loc10_].y * (1 - _loc16_));
                                                                                          if(!(_loc28_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() + this.§#!w§[_loc14_].y * _loc16_);
                                                                                          }
                                                                                       }
                                                                                       var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                       var _loc19_:Number = 0;
                                                                                       var _loc20_:b2Vec2 = new b2Vec2();
                                                                                       var _loc21_:b2Vec2 = this.§#!w§[_loc13_];
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr684:
                                                                                                _loc12_ = §§pop();
                                                                                                if(_loc27_ || param2)
                                                                                                {
                                                                                                   addr692:
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      addr991:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr995:
                                                                                                                  _loc20_.§^$§(1 / _loc19_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr1009:
                                                                                                                  return _loc19_;
                                                                                                                  addr1008:
                                                                                                               }
                                                                                                               param4.SetV(b2Math.§'!6§(param3,_loc20_));
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(1);
                                                                                                               if(!(_loc28_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() % this.§,L§);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        if(!(_loc28_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                           {
                                                                                                                              addr734:
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              if(_loc28_ && param2)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr742:
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!(_loc27_ || param1))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 _loc22_ = _loc18_;
                                                                                                                                 if(_loc27_ || param3)
                                                                                                                                 {
                                                                                                                                    addr770:
                                                                                                                                    §§push(0.5);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc21_.x);
                                                                                                                                       if(!_loc28_)
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
                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr803:
                                                                                                                                                            §§push(_loc21_.y);
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               addr807:
                                                                                                                                                               §§push(_loc17_.y);
                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(!(_loc28_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc22_.x);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr832:
                                                                                                                                                                     §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr835:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              _loc25_ = §§pop();
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 addr985:
                                                                                                                                                                                 _loc19_ = §§pop();
                                                                                                                                                                                 addr984:
                                                                                                                                                                                 loop16:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop14:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                       §§push(_loc20_.x);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc25_);
                                                                                                                                                                                          if(!(_loc28_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc17_.x);
                                                                                                                                                                                             if(_loc27_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_.x);
                                                                                                                                                                                                if(!(_loc28_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr951:
                                                                                                                                                                                                      §§push(§§pop() + _loc22_.x);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc28_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr963:
                                                                                                                                                                                                      §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                                                      addr962:
                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         §§push(_loc20_.y);
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc25_);
                                                                                                                                                                                                            if(!(_loc28_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc17_.y);
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_.y);
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr888:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc22_.y);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr899:
                                                                                                                                                                                                                        §§pop().y = §§pop() + §§pop() / 3;
                                                                                                                                                                                                                        addr898:
                                                                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr964);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr898);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr888);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr898);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr899);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr964:
                                                                                                                                                                                                      _loc21_ = _loc22_;
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                      addr966:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr962);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr951);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr962);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr963);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                           }
                                                                                                                                                                           addr981:
                                                                                                                                                                           §§push(§§pop() + _loc25_);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr984);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr985);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr981);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr832);
                                                                                                                                                               §§push(§§pop() - _loc17_.x);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr832);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr981);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr807);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr832);
                                                                                                                                                }
                                                                                                                                                §§goto(addr807);
                                                                                                                                             }
                                                                                                                                             §§goto(addr835);
                                                                                                                                          }
                                                                                                                                          §§goto(addr807);
                                                                                                                                       }
                                                                                                                                       §§goto(addr803);
                                                                                                                                    }
                                                                                                                                    §§goto(addr985);
                                                                                                                                 }
                                                                                                                                 §§goto(addr963);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1008);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc22_ = this.§#!w§[_loc12_];
                                                                                                                           }
                                                                                                                           §§goto(addr770);
                                                                                                                        }
                                                                                                                        §§goto(addr742);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1009);
                                                                                                               }
                                                                                                               §§goto(addr734);
                                                                                                            }
                                                                                                            §§goto(addr1009);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr995);
                                                                                             }
                                                                                             §§goto(addr991);
                                                                                          }
                                                                                          §§goto(addr684);
                                                                                       }
                                                                                       §§goto(addr692);
                                                                                    }
                                                                                    §§goto(addr631);
                                                                                 }
                                                                                 §§goto(addr588);
                                                                              }
                                                                              §§goto(addr572);
                                                                           }
                                                                           §§goto(addr543);
                                                                        }
                                                                        §§goto(addr519);
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§push(this.§,L§);
                                                            if(!_loc27_)
                                                            {
                                                               §§goto(addr395);
                                                            }
                                                            §§push(§§pop() - 1);
                                                            if(!(_loc28_ && param1))
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!_loc28_)
                                                               {
                                                                  §§goto(addr376);
                                                               }
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr452);
                                                      }
                                                      §§goto(addr336);
                                                   default:
                                                      §§goto(addr376);
                                                   case 0:
                                                      addr257:
                                                      if(_loc11_)
                                                      {
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            addr265:
                                                            _loc24_ = new b2MassData();
                                                            if(_loc27_)
                                                            {
                                                               this.ComputeMass(_loc24_,1);
                                                               addr300:
                                                            }
                                                            else if(true)
                                                            {
                                                               addr301:
                                                               §§push(0);
                                                               if(!_loc28_)
                                                               {
                                                                  addr304:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            param4.SetV(b2Math.§'!6§(param3,_loc24_.center));
                                                            if(!(_loc27_ || param3))
                                                            {
                                                               §§goto(addr300);
                                                            }
                                                            return _loc24_.§@K§;
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      §§goto(addr301);
                                                }
                                                break loop5;
                                             }
                                             §§goto(addr451);
                                          }
                                          addr431:
                                          §§push(1);
                                          if(_loc27_ || param1)
                                          {
                                          }
                                          §§goto(addr444);
                                       }
                                       §§push(1);
                                       if(!_loc28_)
                                       {
                                          addr430:
                                          addr429:
                                          if(§§pop() === _loc26_)
                                          {
                                             §§goto(addr431);
                                          }
                                          §§push(2);
                                       }
                                       §§goto(addr444);
                                    }
                                    §§goto(addr430);
                                 }
                                 §§goto(addr429);
                              }
                              §§goto(addr422);
                           }
                           §§goto(addr451);
                        }
                        §§goto(addr384);
                        §§goto(addr257);
                     }
                  }
                  §§goto(addr451);
               }
               break;
            }
            _loc9_ = §§pop();
            if(_loc27_ || param1)
            {
               §§goto(addr360);
            }
            §§goto(addr384);
         }
         §§goto(addr51);
      }
      
      public function §6+§() : int
      {
         return this.§,L§;
      }
      
      public function § A§() : Vector.<b2Vec2>
      {
         return this.§#!w§;
      }
      
      public function §3X§() : Vector.<b2Vec2>
      {
         return this.§2!-§;
      }
      
      public function §4!J§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#!w§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§#!w§[0].y * param1.y);
            if(_loc6_ || this)
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
               if(!_loc7_)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     if(!(_loc7_ && param1))
                     {
                        if(§§pop() >= this.§,L§)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(_loc2_);
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr181:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr182:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr119:
                                                   _loc3_ = Number(§§pop());
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            _loc4_++;
                                                            addr97:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr95:
                                                      }
                                                      continue loop11;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                   addr178:
                                                }
                                                else
                                                {
                                                   addr169:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            §§goto(addr178);
                                                         }
                                                         addr177:
                                                      }
                                                   }
                                                   addr169:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§goto(addr95);
                                                }
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                        else
                        {
                           §§push(this.§#!w§[_loc4_].x * param1.x);
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(this.§#!w§[_loc4_].y * param1.y);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc7_)
                                 {
                                    addr168:
                                    §§goto(addr169);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr182);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function § X§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#!w§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§#!w§[0].y * param1.y);
            if(_loc7_)
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
            if(_loc7_ || _loc3_)
            {
               if(!(_loc6_ && param1))
               {
                  if(§§pop() >= this.§,L§)
                  {
                     if(!(_loc7_ || _loc3_))
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              addr178:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr179:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           addr177:
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(_loc7_ || _loc3_)
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 _loc3_ = §§pop();
                                 addr124:
                              }
                              else
                              {
                                 addr166:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       addr175:
                                    }
                                    addr176:
                                    while(§§pop() > §§pop())
                                    {
                                       §§goto(addr177);
                                    }
                                 }
                                 addr166:
                              }
                              _loc4_++;
                              continue loop0;
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr124);
                  }
                  else
                  {
                     §§push(this.§#!w§[_loc4_].x * param1.x);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(this.§#!w§[_loc4_].y * param1.y);
                        if(_loc7_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                              §§goto(addr166);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr176);
                     }
                  }
                  §§goto(addr166);
               }
               §§goto(addr178);
            }
            §§goto(addr179);
         }
         return this.§#!w§[_loc2_];
      }
      
      private function §##§() : Boolean
      {
         return false;
      }
      
      private function §?e§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§#!w§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  this.§2!-§[_loc2_] = new b2Vec2();
                  while(true)
                  {
                     _loc2_++;
                  }
                  addr65:
                  addr74:
               }
               while(_loc4_)
               {
                  §§goto(addr65);
               }
               continue;
            }
            this.§#!w§[_loc2_] = new b2Vec2();
            §§goto(addr74);
         }
      }
   }
}
