package §#b§
{
   import § !t§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §1!n§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2PolygonShape)
         {
            §1!n§ = new b2Mat22();
         }
      }
      
      b2internal var §#M§:b2Vec2;
      
      b2internal var §>!+§:Vector.<b2Vec2>;
      
      b2internal var §+!]§:Vector.<b2Vec2>;
      
      b2internal var §8k§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super();
         if(_loc2_)
         {
            §5!Z§ = b2internal::>>;
            this.§#M§ = new b2Vec2();
            if(!_loc1_)
            {
               this.§>!+§ = new Vector.<b2Vec2>();
               §§goto(addr56);
            }
            §§goto(addr69);
         }
         addr56:
         this.§+!]§ = new Vector.<b2Vec2>();
         if(_loc2_ || _loc2_)
         {
            addr69:
            §%+§ = b2Settings.b2_polygonRadius;
            if(!_loc1_)
            {
               this.§#M§.§22§();
            }
         }
      }
      
      public static function §=!@§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§!Y§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §,>§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§[!c§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §4J§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§+q§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §7!o§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§1`§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §>O§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§@!&§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §4K§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc17_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               §§push(_loc9_.x - _loc5_);
               if(_loc18_)
               {
                  _loc11_ = §§pop();
                  if(!_loc17_)
                  {
                     §§push(_loc9_.y);
                     if(_loc18_ || param2)
                     {
                        §§push(_loc6_);
                        if(_loc18_)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc17_ && param1))
                           {
                              _loc12_ = §§pop();
                              if(!_loc17_)
                              {
                                 §§push(_loc10_.x);
                                 if(_loc18_)
                                 {
                                    §§push(Number(§§pop() - _loc5_));
                                    if(!(_loc17_ && b2PolygonShape))
                                    {
                                       _loc13_ = §§pop();
                                       §§push(_loc10_.y - _loc6_);
                                       if(_loc18_)
                                       {
                                          addr166:
                                          §§push(Number(§§pop()));
                                          if(!(_loc17_ && param1))
                                          {
                                             addr174:
                                             _loc14_ = §§pop();
                                             if(_loc18_)
                                             {
                                                §§push(_loc11_);
                                                if(_loc18_)
                                                {
                                                   addr188:
                                                   §§push(_loc14_);
                                                   if(!_loc17_)
                                                   {
                                                      addr184:
                                                      §§push(§§pop() * §§pop());
                                                      §§push(_loc12_);
                                                   }
                                                   §§push(Number(§§pop() - §§pop() * _loc13_));
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      _loc15_ = §§pop();
                                                      if(_loc18_ || param1)
                                                      {
                                                         §§push(0.5);
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            addr214:
                                                            _loc16_ = §§pop() * _loc15_;
                                                            §§push(_loc4_ + _loc16_);
                                                            if(_loc18_ || param1)
                                                            {
                                                               addr226:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!(_loc17_ && param1))
                                                         {
                                                            _loc3_.§!a§(new b2Vec2(_loc5_,_loc6_));
                                                            addr241:
                                                            _loc3_.§!a§(_loc9_);
                                                            if(!_loc18_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc3_.§!a§(_loc10_);
                                                         §§push(_loc3_);
                                                         §§push(_loc16_);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() * _loc7_);
                                                         }
                                                         §§pop().§=!K§(§§pop());
                                                         addr256:
                                                         _loc8_++;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr256);
                           }
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr256);
               }
               §§goto(addr188);
            }
            §§goto(addr86);
         }
         if(_loc18_ || param1)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc17_ && _loc3_))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(_loc18_ || param2)
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc18_)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §7!4§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc4_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = 0;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(_loc26_ || b2PolygonShape)
         {
            _loc4_ = 0;
         }
         do
         {
            if(_loc4_ < param3)
            {
               _loc5_[_loc4_] = param2[_loc4_];
               if(_loc27_)
               {
                  break;
               }
               continue;
            }
            if(_loc26_ || param2)
            {
               break;
            }
            var _loc6_:* = Number(Number.MAX_VALUE);
            if(!(_loc27_ && b2PolygonShape))
            {
               §§push(1);
               if(!_loc27_)
               {
                  _loc4_ = §§pop();
                  if(_loc26_)
                  {
                     addr127:
                     loop19:
                     while(true)
                     {
                        §§push(_loc4_);
                        addr890:
                        while(§§pop() <= param3)
                        {
                           _loc7_ = _loc5_[int(_loc4_ - 1)];
                           if(_loc26_)
                           {
                              §§push(Number(_loc5_[_loc4_].x - _loc7_.x));
                              if(!(_loc27_ && param1))
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc27_)
                                 {
                                    §§push(_loc5_[_loc4_].y - _loc7_.y);
                                    if(_loc26_)
                                    {
                                       _loc9_ = Number(§§pop());
                                       §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                       if(_loc26_ || param1)
                                       {
                                          _loc10_ = §§pop();
                                          §§push(_loc8_);
                                          if(_loc26_)
                                          {
                                             §§push(_loc10_);
                                             if(!(_loc27_ && param3))
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc26_ || param2)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc26_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         §§push(_loc9_);
                                                         §§push(_loc10_);
                                                         if(_loc26_ || b2PolygonShape)
                                                         {
                                                            addr226:
                                                            §§push(Number(§§pop() / §§pop()));
                                                            §§push(Number(§§pop() / §§pop()));
                                                            if(_loc26_ || param2)
                                                            {
                                                               _loc9_ = §§pop();
                                                               §§push(-§§pop());
                                                               if(_loc26_ || param3)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc26_ || param3)
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     §§push(_loc8_);
                                                                     if(_loc26_ || param1)
                                                                     {
                                                                        addr261:
                                                                        _loc12_ = §§pop();
                                                                        if(_loc26_ || b2PolygonShape)
                                                                        {
                                                                           _loc13_ = Number(Number.MAX_VALUE);
                                                                           §§push(Number(Number.MAX_VALUE));
                                                                           if(_loc26_)
                                                                           {
                                                                              _loc14_ = §§pop();
                                                                              if(_loc26_)
                                                                              {
                                                                                 _loc15_ = Number(-Number.MAX_VALUE);
                                                                                 addr287:
                                                                                 _loc16_ = Number(-Number.MAX_VALUE);
                                                                                 if(!(_loc27_ && b2PolygonShape))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc27_ && param2))
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                       addr374:
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          addr520:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                          }
                                                                                          addr520:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          addr375:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             addr376:
                                                                                             addr526:
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc26_ || param1)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   if(!(_loc27_ && param2))
                                                                                                   {
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc20_);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc22_ = §§pop();
                                                                                                                  addr406:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc21_);
                                                                                                                     if(_loc26_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              §§push(_loc21_);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                    {
                                                                                                                                       addr442:
                                                                                                                                       §§push(_loc22_);
                                                                                                                                       loop10:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          addr444:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc22_);
                                                                                                                                                if(_loc26_ || b2PolygonShape)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc27_ && param2)
                                                                                                                                                   {
                                                                                                                                                      break loop7;
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr469:
                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                      if(!(_loc27_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            loop4:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                           addr493:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                              addr494:
                                                                                                                                                                              addr726:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                 if(_loc26_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                if(_loc26_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr519:
                                                                                                                                                                                                   _loc17_++;
                                                                                                                                                                                                   §§goto(addr520);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr722:
                                                                                                                                                                                                addr723:
                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr730:
                                                                                                                                                                                                _loc24_ = §§pop() * §§pop();
                                                                                                                                                                                                addr733:
                                                                                                                                                                                                _loc25_ = param1.R;
                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1.center);
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc25_.col1);
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc25_.col2);
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc24_);
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       if(_loc26_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr797:
                                                                                                                                                                                                                                          §§push(param1.center);
                                                                                                                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr801:
                                                                                                                                                                                                                                             §§push(_loc25_.col1.y);
                                                                                                                                                                                                                                             if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr811:
                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr814:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr817:
                                                                                                                                                                                                                                                      §§push(_loc25_.col2.y);
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr824:
                                                                                                                                                                                                                                                         §§push(§§pop() + (§§pop() + §§pop() * _loc24_));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr824);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr817);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          if(_loc26_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.§4k§);
                                                                                                                                                                                                                                             if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr878:
                                                                                                                                                                                                                                                                  addr876:
                                                                                                                                                                                                                                                                  §§push(param1.§4k§);
                                                                                                                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr881:
                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr884:
                                                                                                                                                                                                                                                                        §§push(§§pop() - _loc14_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  addr888:
                                                                                                                                                                                                                                                                  _loc4_++;
                                                                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr888);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr881);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr884);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr881);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr878);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr876);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr878);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr801);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr817);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr824);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr814);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr817);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr811);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr824);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr801);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr797);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr878);
                                                                                                                                                                                                addr728:
                                                                                                                                                                                                addr729:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr607:
                                                                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.R);
                                                                                                                                                                                             if(!(_loc27_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().col1);
                                                                                                                                                                                                if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param1.R);
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr644:
                                                                                                                                                                                                            §§pop().col1.y = _loc9_;
                                                                                                                                                                                                            §§push(param1.R);
                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr654:
                                                                                                                                                                                                               §§push(§§pop().col2);
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                  if(_loc26_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     if(!(_loc26_ || param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(param1.R);
                                                                                                                                                                                                                     if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr683:
                                                                                                                                                                                                                        §§push(§§pop().col2);
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr733);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr693:
                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr696:
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        if(_loc26_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr704:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr712:
                                                                                                                                                                                                                              §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                              if(!(_loc27_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr721:
                                                                                                                                                                                                                                 _loc23_ = §§pop();
                                                                                                                                                                                                                                 §§goto(addr722);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr723);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr728);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr727:
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr722);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr683);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr722);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr644);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr654);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr722);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr520);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr519);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr727);
                                                                                                                                                                           }
                                                                                                                                                                           addr493:
                                                                                                                                                                        }
                                                                                                                                                                        break loop7;
                                                                                                                                                                     }
                                                                                                                                                                     break loop4;
                                                                                                                                                                  }
                                                                                                                                                                  addr481:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr493);
                                                                                                                                                            }
                                                                                                                                                            addr537:
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            if(_loc26_ || b2PolygonShape)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(_loc26_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc26_ || b2PolygonShape)
                                                                                                                                                                  {
                                                                                                                                                                     addr562:
                                                                                                                                                                     §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                     §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                     if(_loc26_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr574:
                                                                                                                                                                           §§push(0.95);
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              addr577:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(_loc26_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop8;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr704);
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr591:
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(_loc26_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr729);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr878);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr730);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr722);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr577);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr727);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr712);
                                                                                                                                                            addr480:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr696);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop19;
                                                                                                                                                }
                                                                                                                                                §§goto(addr494);
                                                                                                                                             }
                                                                                                                                             §§goto(addr469);
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          addr599:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc26_ || param2)
                                                                                                                                          {
                                                                                                                                             §§goto(addr607);
                                                                                                                                          }
                                                                                                                                          §§goto(addr722);
                                                                                                                                       }
                                                                                                                                       addr443:
                                                                                                                                    }
                                                                                                                                    §§goto(addr591);
                                                                                                                                 }
                                                                                                                                 §§goto(addr562);
                                                                                                                              }
                                                                                                                              §§goto(addr574);
                                                                                                                           }
                                                                                                                           §§goto(addr442);
                                                                                                                        }
                                                                                                                        §§goto(addr480);
                                                                                                                     }
                                                                                                                     §§goto(addr722);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr405:
                                                                                                            }
                                                                                                            §§goto(addr443);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§goto(addr574);
                                                                                                      }
                                                                                                      §§goto(addr726);
                                                                                                      addr392:
                                                                                                   }
                                                                                                   §§goto(addr574);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             addr526:
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc27_ && param1))
                                                                                                {
                                                                                                   §§goto(addr537);
                                                                                                }
                                                                                                §§goto(addr599);
                                                                                             }
                                                                                             §§goto(addr712);
                                                                                          }
                                                                                       }
                                                                                       addr374:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= param3)
                                                                                       {
                                                                                          §§push(_loc15_);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§goto(addr526);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   _loc19_ = §§pop();
                                                                                                   §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc26_ || param2)
                                                                                                      {
                                                                                                         _loc20_ = §§pop();
                                                                                                         §§push(_loc8_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(!(_loc27_ && param2))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(_loc26_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              _loc21_ = §§pop();
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§goto(addr374);
                                                                                                                              }
                                                                                                                              §§goto(addr591);
                                                                                                                           }
                                                                                                                           §§goto(addr442);
                                                                                                                        }
                                                                                                                        §§goto(addr376);
                                                                                                                     }
                                                                                                                     §§goto(addr704);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr562);
                                                                                                               addr352:
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         addr344:
                                                                                                      }
                                                                                                      §§goto(addr375);
                                                                                                   }
                                                                                                   §§goto(addr721);
                                                                                                }
                                                                                                §§goto(addr405);
                                                                                             }
                                                                                             §§goto(addr722);
                                                                                             addr321:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr574);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              §§goto(addr481);
                                                                           }
                                                                           §§goto(addr721);
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr352);
                                                         }
                                                         §§goto(addr444);
                                                      }
                                                      §§goto(addr493);
                                                   }
                                                   §§goto(addr693);
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr376);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr562);
                                    }
                                    §§goto(addr722);
                                 }
                                 §§goto(addr287);
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr591);
                           continue loop19;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr890);
            }
            §§goto(addr127);
         }
         while(_loc4_++, !(_loc27_ && b2PolygonShape));
         
         _loc5_[param3] = _loc5_[0];
         §§goto(addr110);
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            super.Set(param1);
            if(!_loc4_)
            {
               if(param1 is b2PolygonShape)
               {
                  addr33:
                  _loc2_ = param1 as b2PolygonShape;
                  if(!_loc4_)
                  {
                     this.§#M§.SetV(_loc2_.§#M§);
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§8k§ = _loc2_.§8k§;
                        if(_loc5_)
                        {
                           this.§9L§(this.§8k§);
                           if(_loc5_ || _loc3_)
                           {
                           }
                           §§goto(addr81);
                        }
                     }
                     _loc3_ = 0;
                  }
                  §§goto(addr81);
               }
               addr81:
               while(_loc3_ < this.§8k§)
               {
                  this.§>!+§[_loc3_].SetV(_loc2_.§>!+§[_loc3_]);
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§+!]§[_loc3_].SetV(_loc2_.§+!]§[_loc3_]);
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc3_++;
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr33);
      }
      
      public function §!Y§(param1:Array, param2:Number = 0) : void
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
         if(_loc7_ || _loc3_)
         {
            this.§[!c§(_loc3_,param2);
         }
      }
      
      public function §[!c§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         §§push(param2);
         if(_loc7_)
         {
            if(§§pop() == 0)
            {
               if(!(_loc8_ && param2))
               {
                  addr40:
                  param2 = param1.length;
               }
            }
            b2Settings.b2Assert(2 <= param2);
            this.§8k§ = param2;
            if(_loc7_ || this)
            {
               this.§9L§(param2);
               _loc3_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc3_);
               §§push(this.§8k§);
               if(!_loc8_)
               {
                  if(§§pop() >= §§pop())
                  {
                     _loc3_ = 0;
                     if(_loc7_)
                     {
                        addr84:
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop2:
                           while(true)
                           {
                              §§push(this.§8k§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       addr220:
                                       this.§#M§ = §4K§(this.§>!+§,this.§8k§);
                                    }
                                    return;
                                 }
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    _loc4_ = §§pop();
                                    if(!(_loc8_ && param2))
                                    {
                                       §§push(_loc3_);
                                       §§push(1);
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          if(§§pop() >= this.§8k§)
                                          {
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                             }
                                             break;
                                          }
                                          §§push(_loc3_);
                                          if(_loc7_)
                                          {
                                             §§push(1);
                                             if(!_loc8_)
                                             {
                                                break loop0;
                                             }
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             break loop3;
                                          }
                                          addr140:
                                       }
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc7_)
                                          {
                                             §§goto(addr140);
                                          }
                                          break loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc6_ = b2Math.§<b§(this.§>!+§[_loc5_],this.§>!+§[_loc4_]);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          b2Settings.b2Assert(_loc6_.§9^§() > Number.MIN_VALUE);
                                          if(_loc7_)
                                          {
                                             this.§+!]§[_loc3_].SetV(b2Math.§!!r§(_loc6_,1));
                                             if(_loc8_ && param1)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          this.§+!]§[_loc3_].Normalize();
                                          if(!(_loc7_ || param1))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       _loc3_++;
                                       continue loop1;
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 §§goto(addr142);
                              }
                           }
                        }
                     }
                     §§goto(addr220);
                  }
                  else
                  {
                     this.§>!+§[_loc3_].SetV(param1[_loc3_]);
                     if(!_loc8_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr84);
               }
               break;
            }
            while(true)
            {
               §§goto(addr133);
            }
         }
         §§goto(addr40);
      }
      
      public function §+q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§8k§ = 4;
         if(_loc4_ || param2)
         {
            this.§9L§(4);
            if(!(_loc3_ && this))
            {
               this.§>!+§[0].Set(-param1,-param2);
            }
            this.§>!+§[1].Set(param1,-param2);
            if(!(_loc3_ && param1))
            {
               this.§>!+§[2].Set(param1,param2);
               this.§>!+§[3].Set(-param1,param2);
               this.§+!]§[0].Set(0,-1);
            }
            this.§+!]§[1].Set(1,0);
            if(_loc4_ || param1)
            {
               this.§+!]§[2].Set(0,1);
               if(!_loc3_)
               {
                  this.§+!]§[3].Set(-1,0);
                  addr133:
                  this.§#M§.§22§();
               }
            }
            return;
         }
         §§goto(addr133);
      }
      
      public function §1`§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            this.§8k§ = 4;
         }
         this.§9L§(4);
         if(!_loc7_)
         {
            this.§>!+§[0].Set(-param1,-param2);
            this.§>!+§[1].Set(param1,-param2);
            this.§>!+§[2].Set(param1,param2);
         }
         this.§>!+§[3].Set(-param1,param2);
         this.§+!]§[0].Set(0,-1);
         this.§+!]§[1].Set(1,0);
         if(!(_loc7_ && param2))
         {
            this.§+!]§[2].Set(0,1);
            if(!(_loc7_ && param1))
            {
               this.§+!]§[3].Set(-1,0);
               if(_loc7_ && param3)
               {
               }
               §§goto(addr126);
            }
            this.§#M§ = param3;
         }
         addr126:
         var _loc5_:b2Transform;
         (_loc5_ = new b2Transform()).position = param3;
         if(!_loc7_)
         {
            _loc5_.R.Set(param4);
         }
         var _loc6_:int = 0;
         while(_loc6_ < this.§8k§)
         {
            this.§>!+§[_loc6_] = b2Math.§#!N§(_loc5_,this.§>!+§[_loc6_]);
            if(_loc7_ && param2)
            {
               break;
            }
            this.§+!]§[_loc6_] = b2Math.§`!"§(_loc5_.R,this.§+!]§[_loc6_]);
            if(_loc7_)
            {
               break;
            }
            _loc6_++;
            if(!_loc8_)
            {
               break;
            }
         }
      }
      
      public function §@!&§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§8k§ = 2;
            if(!(_loc4_ && param2))
            {
               this.§9L§(2);
               this.§>!+§[0].SetV(param1);
               if(!(_loc4_ && param2))
               {
                  this.§>!+§[1].SetV(param2);
                  if(_loc3_ || param1)
                  {
                     §§push(this.§#M§);
                     if(_loc3_ || this)
                     {
                        §§push(0.5);
                        if(_loc3_)
                        {
                           §§push(param1.x);
                           if(!(_loc4_ && param1))
                           {
                              §§push(param2.x);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().x = §§pop();
                                       if(_loc3_)
                                       {
                                          addr113:
                                          §§push(this.§#M§);
                                          §§push(0.5);
                                          if(_loc3_)
                                          {
                                             addr116:
                                             §§push(param1.y);
                                             if(_loc3_)
                                             {
                                                addr124:
                                                §§pop().y = §§pop() * (§§pop() + param2.y);
                                                addr125:
                                                this.§+!]§[0] = b2Math.§!!r§(b2Math.§<b§(param2,param1),1);
                                                if(_loc3_)
                                                {
                                                   this.§+!]§[0].Normalize();
                                                   addr138:
                                                   if(!_loc4_)
                                                   {
                                                      addr155:
                                                      this.§+!]§[1].x = -this.§+!]§[0].x;
                                                      if(_loc3_)
                                                      {
                                                         addr168:
                                                         this.§+!]§[1].y = -this.§+!]§[0].y;
                                                      }
                                                   }
                                                   §§goto(addr168);
                                                }
                                                return;
                                                addr123:
                                                addr122:
                                                addr120:
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr125);
               }
               §§goto(addr138);
            }
            §§goto(addr113);
         }
         §§goto(addr168);
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
            if(_loc11_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc11_)
         {
            §§push(§§pop() - param1.position.y);
            if(!(_loc12_ && _loc3_))
            {
               addr62:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(_loc11_)
            {
               §§push(_loc4_.col1.x);
               if(!(_loc12_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc12_)
                  {
                     §§push(_loc6_);
                     if(_loc11_ || _loc3_)
                     {
                        addr88:
                        §§push(§§pop() * _loc4_.col1.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc12_ && param2)
                     {
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr88);
            }
            addr101:
            var _loc7_:Number = §§pop();
            §§push(_loc5_);
            if(!(_loc12_ && this))
            {
               §§push(_loc4_.col2.x);
               if(_loc11_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc11_)
                  {
                     §§push(_loc6_);
                     if(!(_loc12_ && param2))
                     {
                        addr126:
                        §§push(§§pop() * _loc4_.col2.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc12_ && param2)
                     {
                     }
                  }
                  §§goto(addr149);
               }
               §§goto(addr126);
            }
            addr149:
            var _loc8_:Number = §§pop();
            var _loc9_:int = 0;
            while(true)
            {
               if(_loc9_ >= this.§8k§)
               {
                  return true;
               }
               _loc3_ = this.§>!+§[_loc9_];
               if(!_loc12_)
               {
                  §§push(_loc7_);
                  if(_loc11_ || this)
                  {
                     §§push(_loc3_.x);
                     if(!_loc12_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc11_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc12_)
                           {
                              _loc5_ = §§pop();
                              addr213:
                              if(_loc11_ || this)
                              {
                                 §§push(_loc8_);
                                 if(_loc11_ || this)
                                 {
                                    addr201:
                                    §§push(§§pop() - _loc3_.y);
                                    if(_loc11_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              _loc3_ = this.§+!]§[_loc9_];
                              if(_loc11_ || _loc3_)
                              {
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
                                          if(!_loc12_)
                                          {
                                             addr260:
                                             §§push(§§pop() * _loc6_);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc11_)
                                                {
                                                   addr267:
                                                   §§push(Number(§§pop()));
                                                   if(_loc11_)
                                                   {
                                                      addr270:
                                                      §§push(§§pop());
                                                      if(_loc11_)
                                                      {
                                                         _loc10_ = §§pop();
                                                      }
                                                      addr275:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr275);
                                                   §§push(0);
                                                }
                                                §§goto(addr270);
                                             }
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr267);
                              }
                              break;
                           }
                           _loc6_ = §§pop();
                           §§goto(addr213);
                        }
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr213);
            }
            return false;
         }
         §§goto(addr62);
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
         §§push(param2.§&+§);
         if(!(_loc20_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_)
         {
            §§push(param2.p1);
            if(_loc21_ || param3)
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
                        if(!(_loc20_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_)
                           {
                              addr79:
                              _loc6_ = §§pop();
                              if(_loc21_ || param3)
                              {
                                 addr89:
                                 §§push(param2.p1.y);
                                 if(!(_loc20_ && param3))
                                 {
                                    addr97:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && param1))
                                    {
                                       addr108:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!_loc20_)
                              {
                                 §§push(_loc8_.col1.x);
                                 if(!_loc20_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc20_ && param3))
                                    {
                                       §§push(_loc7_);
                                       if(!_loc20_)
                                       {
                                          addr133:
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc21_ || param2)
                                       {
                                       }
                                       addr146:
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(!_loc20_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(_loc21_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc20_ && param1))
                                             {
                                                addr168:
                                                §§push(_loc7_);
                                                if(!_loc20_)
                                                {
                                                   addr171:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc20_)
                                                {
                                                   addr178:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                if(_loc21_)
                                                {
                                                   §§push(param2.p2);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc21_)
                                                      {
                                                         §§push(param3.position);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc21_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc21_ || param1)
                                                               {
                                                                  addr204:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc21_ || this)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr217:
                                                                        §§push(param2.p2.y);
                                                                        if(!(_loc20_ && param3))
                                                                        {
                                                                           addr225:
                                                                           §§push(§§pop() - param3.position.y);
                                                                           if(_loc21_ || param1)
                                                                           {
                                                                              addr236:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     _loc8_ = param3.R;
                                                                     §§push(_loc6_);
                                                                     if(!_loc20_)
                                                                     {
                                                                        §§push(_loc8_.col1.x);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc21_ || param1)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc21_ || param2)
                                                                              {
                                                                                 addr266:
                                                                                 §§push(§§pop() * _loc8_.col1.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                              }
                                                                              addr279:
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(_loc21_ || this)
                                                                              {
                                                                                 §§push(_loc8_.col2.x);
                                                                                 if(!(_loc20_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       addr306:
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc20_ && param1))
                                                                                       {
                                                                                          addr314:
                                                                                          §§push(§§pop() * _loc8_.col2.y);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr321:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       if(_loc21_ || this)
                                                                                       {
                                                                                          §§push(§§pop() - _loc10_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(_loc21_ || this)
                                                                                       {
                                                                                          §§push(§§pop() - _loc11_);
                                                                                          if(_loc21_ || param3)
                                                                                          {
                                                                                             addr354:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc15_:* = §§pop();
                                                                                          var _loc16_:* = -1;
                                                                                          var _loc17_:int = 0;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(this.§8k§);
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         addr675:
                                                                                                         if(_loc16_ >= 0)
                                                                                                         {
                                                                                                            if(_loc21_ || this)
                                                                                                            {
                                                                                                               param1.fraction = _loc4_;
                                                                                                            }
                                                                                                            §§goto(addr686);
                                                                                                         }
                                                                                                         §§goto(addr819);
                                                                                                      }
                                                                                                      addr686:
                                                                                                      _loc8_ = param3.R;
                                                                                                      _loc9_ = this.§+!]§[_loc16_];
                                                                                                      if(_loc21_ || param1)
                                                                                                      {
                                                                                                         §§push(param1.normal);
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            §§push(_loc8_.col1);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!(_loc20_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc9_.x);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              addr743:
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr758);
                                                                                                                                    }
                                                                                                                                    §§goto(addr805);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr810);
                                                                                                                           }
                                                                                                                           §§goto(addr797);
                                                                                                                        }
                                                                                                                        §§goto(addr805);
                                                                                                                     }
                                                                                                                     addr758:
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(_loc21_ || param3)
                                                                                                                     {
                                                                                                                        addr770:
                                                                                                                        addr768:
                                                                                                                        §§push(param1.normal);
                                                                                                                        §§push(_loc8_.col1.y);
                                                                                                                        if(_loc21_ || param3)
                                                                                                                        {
                                                                                                                           addr778:
                                                                                                                           §§push(_loc9_.x);
                                                                                                                           if(_loc21_ || this)
                                                                                                                           {
                                                                                                                              addr797:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc21_ || param2)
                                                                                                                              {
                                                                                                                                 addr805:
                                                                                                                                 §§push(_loc8_.col2.y);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr810:
                                                                                                                                    §§push(§§pop() * _loc9_.y);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr810);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§goto(addr817);
                                                                                                                        }
                                                                                                                        §§goto(addr819);
                                                                                                                     }
                                                                                                                     addr819:
                                                                                                                     return false;
                                                                                                                  }
                                                                                                                  §§goto(addr743);
                                                                                                               }
                                                                                                               §§goto(addr778);
                                                                                                            }
                                                                                                            §§goto(addr770);
                                                                                                         }
                                                                                                         §§goto(addr768);
                                                                                                      }
                                                                                                      addr817:
                                                                                                      return true;
                                                                                                   }
                                                                                                   §§push((_loc9_ = this.§>!+§[_loc17_]).x);
                                                                                                   if(_loc21_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!(_loc20_ && param3))
                                                                                                         {
                                                                                                            addr388:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc21_ || param3)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr414:
                                                                                                                     §§push(§§pop() - _loc11_);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        addr418:
                                                                                                                        _loc7_ = Number(§§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                               }
                                                                                                               §§push((_loc9_ = this.§+!]§[_loc17_]).x);
                                                                                                               if(!(_loc20_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc21_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_ || param2)
                                                                                                                     {
                                                                                                                        addr450:
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr463:
                                                                                                                              §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 _loc18_ = §§pop();
                                                                                                                                 §§push(_loc9_.x * _loc14_);
                                                                                                                              }
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                    if(!(_loc20_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                       {
                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                          if(§§pop() == 0)
                                                                                                                                          {
                                                                                                                                             if(_loc21_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                {
                                                                                                                                                   addr521:
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         return §§pop();
                                                                                                                                                      }
                                                                                                                                                      addr541:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr547:
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr635:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  addr559:
                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr611:
                                                                                                                                                            if(§§pop() < §§pop() * §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr616:
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr620:
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr628:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                  addr632:
                                                                                                                                                                  §§goto(addr635);
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  §§push(_loc4_ - Number.MIN_VALUE);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr632);
                                                                                                                                                         }
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr565:
                                                                                                                                                            _loc4_ = Number(_loc18_ / _loc19_);
                                                                                                                                                            if(!(_loc21_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                            §§goto(addr632);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(_loc21_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr597:
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc21_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr610:
                                                                                                                                                                           §§goto(addr611);
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr632);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr616);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr611);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr610);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr632);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr597);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr632);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          if(_loc21_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr541);
                                                                                                                                                }
                                                                                                                                                §§goto(addr644);
                                                                                                                                             }
                                                                                                                                             §§goto(addr620);
                                                                                                                                          }
                                                                                                                                          §§goto(addr565);
                                                                                                                                       }
                                                                                                                                       §§goto(addr559);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr547);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr635);
                                                                                                                        }
                                                                                                                        §§goto(addr463);
                                                                                                                     }
                                                                                                                     §§goto(addr628);
                                                                                                                  }
                                                                                                                  §§goto(addr521);
                                                                                                               }
                                                                                                               §§goto(addr450);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr418);
                                                                                                      }
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   §§goto(addr388);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          addr644:
                                                                                          return §§pop();
                                                                                          §§push(false);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr279);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr146);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr108);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr89);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§>!+§[0];
         §§push(param2.position.x);
         if(_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc12_ && param2))
            {
               §§push(_loc4_.x);
               if(!(_loc12_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc12_ && param2))
                  {
                     addr63:
                     §§push(_loc3_.col2.x);
                     if(_loc13_)
                     {
                        addr71:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr71);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc12_ && _loc3_))
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!_loc12_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc13_ || param1)
                     {
                        §§push(_loc4_.x);
                        if(!_loc12_)
                        {
                           addr118:
                           §§push(§§pop() * §§pop());
                           if(_loc13_)
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc13_ || _loc3_)
                              {
                                 §§push(§§pop() * _loc4_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc13_ || param2)
                           {
                              addr126:
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
                           if(_loc13_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           var _loc9_:int = 1;
                           while(_loc9_ < this.§8k§)
                           {
                              _loc4_ = this.§>!+§[_loc9_];
                              if(!(_loc12_ && param1))
                              {
                                 §§push(param2.position);
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc13_)
                                    {
                                       §§push(_loc3_.col1);
                                       if(!(_loc12_ && this))
                                       {
                                          §§push(§§pop().x);
                                          §§push(_loc4_.x);
                                          if(_loc13_ || this)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_)
                                             {
                                                §§push(_loc3_.col2);
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc12_ && this))
                                                   {
                                                      addr211:
                                                      §§push(_loc4_.y);
                                                      if(_loc13_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            _loc10_ = §§pop() + (§§pop() + §§pop());
                                                            addr237:
                                                            §§push(param2.position.y);
                                                            §§push(_loc3_.col1.y);
                                                            if(_loc13_ || this)
                                                            {
                                                               §§push(_loc4_.x);
                                                               if(!_loc12_)
                                                               {
                                                                  addr249:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     addr269:
                                                                     §§push(_loc3_.col2.y);
                                                                     if(_loc12_)
                                                                     {
                                                                     }
                                                                     addr276:
                                                                     §§push(§§pop() + (§§pop() + §§pop()));
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc12_ && _loc3_))
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 if(!(_loc12_ && param2))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                addr331:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr336:
                                                                                                   §§push(_loc6_);
                                                                                                   §§push(_loc11_);
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      addr339:
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      if(!(_loc12_ && _loc3_))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr362:
                                                                                                            §§push(Number(Number(_loc6_)));
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr365:
                                                                                                               _loc6_ = §§pop();
                                                                                                               §§push(_loc7_);
                                                                                                               if(!(_loc12_ && this))
                                                                                                               {
                                                                                                                  addr374:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     addr377:
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(_loc13_ || this)
                                                                                                                     {
                                                                                                                        addr385:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    addr404:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc12_ && param1))
                                                                                                                                    {
                                                                                                                                       addr412:
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       addr413:
                                                                                                                                       if(_loc8_ > _loc11_)
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                          {
                                                                                                                                             addr438:
                                                                                                                                             addr439:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc8_ = Number(§§pop());
                                                                                                                                             _loc9_++;
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(Number(_loc11_));
                                                                                                                                       if(!(_loc12_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr438);
                                                                                                                                       }
                                                                                                                                       §§goto(addr439);
                                                                                                                                       §§goto(addr438);
                                                                                                                                    }
                                                                                                                                    addr394:
                                                                                                                                 }
                                                                                                                                 §§goto(addr438);
                                                                                                                              }
                                                                                                                              addr428:
                                                                                                                              §§goto(addr438);
                                                                                                                           }
                                                                                                                           §§goto(addr413);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(Number(_loc10_));
                                                                                                                           if(_loc13_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr404);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr412);
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                            §§goto(addr374);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(!(_loc12_ && this))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  §§goto(addr362);
                                                                                                               }
                                                                                                               §§goto(addr428);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr394);
                                                                                                      }
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                   §§goto(addr412);
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                                addr326:
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                          §§goto(addr438);
                                                                                       }
                                                                                       §§goto(addr412);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(_loc10_));
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr438);
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               addr274:
                                                               §§goto(addr276);
                                                               §§push(§§pop() * _loc4_.y);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr249);
                                                }
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr404);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr336);
                           }
                           if(_loc13_ || _loc3_)
                           {
                              §§push(param1.§ !d§);
                              if(_loc13_)
                              {
                                 §§push(_loc5_);
                                 if(_loc13_ || param1)
                                 {
                                    §§push(§§pop() - b2internal::%+);
                                    if(!(_loc12_ && param1))
                                    {
                                       §§pop().x = §§pop();
                                       if(!_loc12_)
                                       {
                                          addr478:
                                          §§push(param1.§ !d§);
                                          §§push(_loc6_);
                                          if(_loc13_ || param2)
                                          {
                                             addr488:
                                             §§pop().y = §§pop() - b2internal::%+;
                                             if(_loc13_)
                                             {
                                                §§push(param1.§=!j§);
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc12_ && _loc3_))
                                                   {
                                                      §§pop().x = §§pop() + b2internal::%+;
                                                      if(_loc13_ || param2)
                                                      {
                                                         addr526:
                                                         param1.§=!j§.y = _loc8_ + b2internal::%+;
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr526);
                                             }
                                          }
                                          §§goto(addr488);
                                       }
                                       §§goto(addr526);
                                    }
                                 }
                                 §§goto(addr488);
                              }
                           }
                           §§goto(addr478);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr126);
               }
               §§goto(addr71);
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
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(this.§8k§ == 2)
         {
            if(!_loc27_)
            {
               §§push(param1.center);
               if(!(_loc27_ && param1))
               {
                  §§push(0.5);
                  if(_loc28_)
                  {
                     §§push(§§pop() * (this.§>!+§[0].x + this.§>!+§[1].x));
                     if(!_loc27_)
                     {
                        §§pop().x = §§pop();
                        if(!(_loc27_ && this))
                        {
                           addr93:
                           §§push(param1.center);
                           §§push(0.5);
                           if(!_loc27_)
                           {
                              addr96:
                              §§push(§§pop() * (this.§>!+§[0].y + this.§>!+§[1].y));
                           }
                           §§pop().y = §§pop();
                           param1.§3!^§ = 0;
                           if(!(_loc27_ && _loc3_))
                           {
                              addr119:
                              param1.§=!'§ = 0;
                              if(!_loc28_)
                              {
                                 addr125:
                                 §§push(0);
                                 if(!(_loc27_ && _loc3_))
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
                                 if(_loc28_)
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
                                 while(_loc10_ < this.§8k§)
                                 {
                                    _loc11_ = this.§>!+§[_loc10_];
                                    if(!_loc27_)
                                    {
                                       _loc12_ = _loc10_ + 1 < this.§8k§ ? this.§>!+§[int(_loc10_ + 1)] : this.§>!+§[0];
                                       _loc13_ = _loc11_.x - _loc7_;
                                       if(!_loc27_)
                                       {
                                          §§push(_loc11_.y);
                                          if(_loc28_ || param2)
                                          {
                                             §§push(_loc8_);
                                             if(_loc28_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc27_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc27_ && param1))
                                                   {
                                                      _loc14_ = §§pop();
                                                      if(_loc28_)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc27_)
                                                            {
                                                               _loc15_ = §§pop() - §§pop();
                                                               §§push(_loc12_.y);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(Number(§§pop() - _loc8_));
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     if(_loc28_ || this)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(_loc28_ || param1)
                                                                        {
                                                                           addr282:
                                                                           §§push(_loc16_);
                                                                           if(_loc28_)
                                                                           {
                                                                              §§push(§§pop() * §§pop() - _loc14_ * _loc15_);
                                                                              if(!(_loc27_ && _loc3_))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc27_ && this))
                                                                                 {
                                                                                    addr305:
                                                                                    _loc17_ = §§pop();
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc17_);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc18_ = §§pop();
                                                                                          §§push(_loc5_ + _loc18_);
                                                                                          if(_loc28_ || _loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc28_ || param1)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                addr336:
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc27_ && param2))
                                                                                                {
                                                                                                   addr344:
                                                                                                   §§push(_loc18_);
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc28_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!(_loc27_ && this))
                                                                                                         {
                                                                                                            §§push(_loc11_.x);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_loc12_.x);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              addr385:
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr388:
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                    {
                                                                                                                                       addr415:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(_loc8_ + _loc11_.y);
                                                                                                                                       §§push(_loc12_.y);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             _loc4_ = Number(§§pop() + §§pop() * §§pop());
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc28_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                      addr451:
                                                                                                                                                      _loc20_ = _loc8_;
                                                                                                                                                      if(!(_loc28_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(_loc13_));
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                         addr465:
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr600:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                            }
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               addr604:
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               §§push(0.25);
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr607:
                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     addr610:
                                                                                                                                                                     §§push(§§pop() * _loc22_);
                                                                                                                                                                     §§push(_loc24_);
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr615:
                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr624:
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                              if(!(_loc27_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr636:
                                                                                                                                                                                 §§push(§§pop() * (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr651:
                                                                                                                                                                                    §§push(_loc20_ * _loc22_);
                                                                                                                                                                                    §§push(_loc20_ * _loc24_);
                                                                                                                                                                                    if(_loc28_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr659:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc28_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr667:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr670:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr675:
                                                                                                                                                                                                §§push(§§pop() * _loc20_);
                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr683:
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr704:
                                                                                                                                                                                                      §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr696:
                                                                                                                                                                                                         _loc26_ = §§pop();
                                                                                                                                                                                                         addr699:
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                         §§push(_loc25_ + _loc26_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc6_ = Number(§§pop());
                                                                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr713:
                                                                                                                                                                                                         _loc10_++;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr703:
                                                                                                                                                                                                   §§goto(addr704);
                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr699);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr703);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr704);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr675);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr699);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr703);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr651);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr704);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr636);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr624);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr675);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr699);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr713);
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr481:
                                                                                                                                                            _loc23_ = §§pop();
                                                                                                                                                            §§push(Number(_loc16_));
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!(_loc27_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr495:
                                                                                                                                                                  §§push(0.25);
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                     if(_loc28_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr552:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc28_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr517:
                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr566:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc27_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr595:
                                                                                                                                                                                                   §§goto(addr600);
                                                                                                                                                                                                   §§push(Number(§§pop() + §§pop() * §§pop() * _loc19_));
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr667);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr675);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr704);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr670);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr659);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr636);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr651);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr595);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr529:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                 if(_loc28_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr551:
                                                                                                                                                                                          §§goto(addr552);
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr624);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr651);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr566);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr667);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr615);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr651);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr610);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr607);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr704);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr600);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr670);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr600);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr604);
                                                                                                                                                }
                                                                                                                                                §§goto(addr600);
                                                                                                                                             }
                                                                                                                                             §§goto(addr465);
                                                                                                                                          }
                                                                                                                                          §§goto(addr517);
                                                                                                                                       }
                                                                                                                                       §§goto(addr529);
                                                                                                                                    }
                                                                                                                                    §§goto(addr595);
                                                                                                                                 }
                                                                                                                                 §§goto(addr600);
                                                                                                                              }
                                                                                                                              §§goto(addr465);
                                                                                                                           }
                                                                                                                           §§goto(addr451);
                                                                                                                        }
                                                                                                                        §§goto(addr481);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr552);
                                                                                                               }
                                                                                                               §§goto(addr651);
                                                                                                            }
                                                                                                            §§goto(addr551);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr675);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr696);
                                                                                             }
                                                                                             §§goto(addr704);
                                                                                          }
                                                                                          §§goto(addr604);
                                                                                       }
                                                                                       §§goto(addr696);
                                                                                    }
                                                                                    §§goto(addr604);
                                                                                 }
                                                                                 §§goto(addr481);
                                                                              }
                                                                           }
                                                                           §§goto(addr675);
                                                                        }
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  §§goto(addr604);
                                                               }
                                                               §§goto(addr385);
                                                            }
                                                            §§goto(addr683);
                                                         }
                                                         §§goto(addr704);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr495);
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr675);
                                          }
                                          §§goto(addr305);
                                       }
                                       §§goto(addr451);
                                    }
                                    §§goto(addr191);
                                 }
                                 if(_loc28_)
                                 {
                                    §§push(param1);
                                    §§push(param2);
                                    if(!_loc27_)
                                    {
                                       §§push(§§pop() * _loc5_);
                                    }
                                    §§pop().§3!^§ = §§pop();
                                    if(!(_loc27_ && _loc3_))
                                    {
                                       §§push(_loc3_);
                                       if(!_loc27_)
                                       {
                                          §§push(1);
                                          if(_loc28_ || param1)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc27_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc27_ && param2))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc28_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc27_ && _loc3_))
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc28_ || this)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc27_ && _loc3_))
                                                            {
                                                               addr791:
                                                               addr790:
                                                               addr789:
                                                               §§push(§§pop() * (1 / _loc5_));
                                                               if(!_loc28_)
                                                               {
                                                               }
                                                               §§goto(addr805);
                                                            }
                                                            addr805:
                                                            _loc4_ = §§pop();
                                                            if(_loc28_)
                                                            {
                                                               addr808:
                                                               param1.center.Set(_loc3_,_loc4_);
                                                               if(_loc28_ || param2)
                                                               {
                                                                  §§push(param1);
                                                                  §§push(param2);
                                                                  if(!(_loc27_ && param2))
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().§=!'§ = §§pop();
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr832);
                                                      }
                                                   }
                                                   §§goto(addr805);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr791);
                                             }
                                             §§goto(addr790);
                                          }
                                          §§goto(addr789);
                                       }
                                       §§goto(addr791);
                                    }
                                    addr832:
                                    return;
                                 }
                                 §§goto(addr808);
                              }
                           }
                           §§goto(addr125);
                        }
                        return;
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr93);
            }
            §§goto(addr119);
         }
         §§goto(addr125);
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
         var _loc5_:b2Vec2 = b2Math.§#Z§(param3.R,param1);
         §§push(param2);
         if(_loc28_ || param2)
         {
            §§push(§§pop() - b2Math.§9!;§(param1,param3.position));
            if(_loc28_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:* = -1;
         var _loc10_:* = -1;
         var _loc11_:Boolean = false;
         if(!_loc27_)
         {
            _loc12_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc12_);
            if(_loc28_ || param1)
            {
               §§push(this.§8k§);
               if(_loc28_)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(_loc8_);
                     if(_loc28_)
                     {
                        loop10:
                        while(true)
                        {
                           var _loc26_:* = §§pop();
                           if(!_loc27_)
                           {
                              §§push(0);
                              if(!_loc27_)
                              {
                                 §§push(_loc26_);
                                 if(_loc28_ || param1)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc28_ || param2)
                                       {
                                          §§push(0);
                                          if(_loc27_ && this)
                                          {
                                             addr340:
                                             if(§§pop() === _loc26_)
                                             {
                                                addr342:
                                                §§push(1);
                                                if(_loc28_ || param3)
                                                {
                                                   addr350:
                                                }
                                             }
                                             else
                                             {
                                                §§push(2);
                                             }
                                          }
                                       }
                                       §§goto(addr342);
                                    }
                                    else
                                    {
                                       §§push(1);
                                       if(_loc28_)
                                       {
                                          §§goto(addr340);
                                       }
                                    }
                                    if(_loc28_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          loop14:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(_loc11_);
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc28_)
                                                      {
                                                         break loop14;
                                                      }
                                                      _loc24_ = new b2MassData();
                                                      if(_loc28_)
                                                      {
                                                         this.ComputeMass(_loc24_,1);
                                                         if(!_loc27_)
                                                         {
                                                            param4.SetV(b2Math.§#!N§(param3,_loc24_.center));
                                                            if(_loc28_)
                                                            {
                                                               return _loc24_.§3!^§;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§push(0);
                                                   if(_loc28_)
                                                   {
                                                      §§goto(addr248);
                                                   }
                                                   continue loop11;
                                                }
                                                break;
                                                addr218:
                                             case 1:
                                                while(true)
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc28_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§push(-1);
                                                   if(_loc28_ || this)
                                                   {
                                                      addr261:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc28_ || param3)
                                                         {
                                                            addr269:
                                                            §§push(this.§8k§);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(!(_loc27_ && param1))
                                                               {
                                                                  addr281:
                                                                  _loc9_ = int(§§pop());
                                                                  break loop14;
                                                               }
                                                               addr371:
                                                               §§push(int(§§pop() % this.§8k§));
                                                               break loop10;
                                                            }
                                                            break loop0;
                                                         }
                                                         addr300:
                                                         break loop11;
                                                      }
                                                      §§push(this.§8k§);
                                                      break loop0;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc27_ && this)
                                                   {
                                                   }
                                                   §§goto(addr371);
                                                }
                                                addr249:
                                          }
                                          addr283:
                                          §§goto(addr300);
                                       }
                                       addr359:
                                       §§push(_loc9_);
                                       if(!_loc27_)
                                       {
                                          addr362:
                                          §§goto(addr363);
                                          §§push(1);
                                       }
                                       break;
                                       addr358:
                                    }
                                    break;
                                 }
                                 §§goto(addr340);
                              }
                              §§goto(addr350);
                           }
                           §§goto(addr342);
                        }
                     }
                     addr375:
                     var _loc13_:* = §§pop();
                     §§push(_loc10_);
                     if(!_loc27_)
                     {
                        §§push(§§pop() + 1);
                        if(!(_loc27_ && param2))
                        {
                           §§push(§§pop() % this.§8k§);
                        }
                        §§push(int(§§pop()));
                     }
                     var _loc14_:* = §§pop();
                     §§push(0 - _loc7_[_loc9_]);
                     if(_loc28_ || this)
                     {
                        §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                        if(!(_loc27_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc15_:* = §§pop();
                     §§push(0 - _loc7_[_loc10_]);
                     if(!_loc27_)
                     {
                        §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                        if(!(_loc27_ && param3))
                        {
                           addr454:
                           §§push(Number(§§pop()));
                        }
                        var _loc16_:* = §§pop();
                        §§push(§§findproperty(b2Vec2));
                        §§push(this.§>!+§[_loc9_].x * (1 - _loc15_));
                        if(_loc28_ || param3)
                        {
                           §§push(this.§>!+§[_loc13_].x * _loc15_);
                           if(!(_loc27_ && param1))
                           {
                              addr488:
                              §§push(§§pop() + §§pop());
                              §§push(this.§>!+§[_loc9_].y * (1 - _loc15_));
                              if(!(_loc27_ && param1))
                              {
                                 addr504:
                                 §§push(§§pop() + this.§>!+§[_loc13_].y * _loc15_);
                              }
                              var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                              §§push(§§findproperty(b2Vec2));
                              §§push(this.§>!+§[_loc10_].x * (1 - _loc16_));
                              if(_loc28_ || this)
                              {
                                 §§push(this.§>!+§[_loc14_].x * _loc16_);
                                 if(_loc28_ || param3)
                                 {
                                    addr547:
                                    §§push(§§pop() + §§pop());
                                    §§push(this.§>!+§[_loc10_].y * (1 - _loc16_));
                                    if(!_loc27_)
                                    {
                                       addr558:
                                       §§push(§§pop() + this.§>!+§[_loc14_].y * _loc16_);
                                    }
                                    var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                    var _loc19_:* = Number(0);
                                    var _loc20_:b2Vec2 = new b2Vec2();
                                    var _loc21_:b2Vec2 = this.§>!+§[_loc13_];
                                    if(!_loc27_)
                                    {
                                       §§push(_loc13_);
                                       if(_loc28_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc28_ || this)
                                          {
                                             _loc12_ = §§pop();
                                             if(_loc28_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   addr880:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc14_);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc27_)
                                                            {
                                                               addr884:
                                                               _loc20_.§=!K§(1 / _loc19_);
                                                               if(_loc28_ || this)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            addr902:
                                                            §§push(_loc19_);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc12_);
                                                            if(_loc28_ || this)
                                                            {
                                                               §§push(1);
                                                               if(_loc27_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc28_)
                                                               {
                                                                  §§push(§§pop() % this.§8k§);
                                                                  if(_loc28_ || param3)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc28_)
                                                                     {
                                                                        addr632:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc27_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           _loc12_ = §§pop();
                                                                           if(!_loc28_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        addr632:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(!(_loc28_ || param2))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc28_ || param2))
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc22_ = _loc18_;
                                                                              if(!(_loc27_ && param3))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(_loc21_.x);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(_loc17_.x);
                                                                                          if(!(_loc27_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(_loc22_.y);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(_loc17_.y);
                                                                                                   if(_loc28_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr706:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc27_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc21_.y);
                                                                                                            if(_loc27_ && this)
                                                                                                            {
                                                                                                            }
                                                                                                            addr743:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               addr746:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  addr754:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     _loc25_ = §§pop();
                                                                                                                     if(!(_loc28_ || param2))
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§push(_loc19_);
                                                                                                                     if(_loc27_ && this)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr778:
                                                                                                                     _loc19_ = §§pop();
                                                                                                                     if(_loc27_ && param3)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        §§push(_loc20_.x);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(_loc25_);
                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc17_.x);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc21_.x);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    addr813:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc22_.x);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       addr824:
                                                                                                                                       §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                       addr823:
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       §§push(_loc20_);
                                                                                                                                       §§push(_loc20_.y);
                                                                                                                                       if(!(_loc27_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(_loc25_);
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_.y);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc21_.y);
                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      addr858:
                                                                                                                                                      §§push(§§pop() + _loc22_.y);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      addr875:
                                                                                                                                                      §§pop().y = §§pop() + §§pop() / 3;
                                                                                                                                                      addr874:
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr874);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr858);
                                                                                                                                          }
                                                                                                                                          §§goto(addr874);
                                                                                                                                       }
                                                                                                                                       §§goto(addr875);
                                                                                                                                    }
                                                                                                                                    §§goto(addr823);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr813);
                                                                                                                           }
                                                                                                                           §§goto(addr823);
                                                                                                                        }
                                                                                                                        §§goto(addr824);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr774:
                                                                                                                  §§push(§§pop() + _loc25_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr778);
                                                                                                            }
                                                                                                            §§goto(addr774);
                                                                                                         }
                                                                                                         §§goto(addr746);
                                                                                                      }
                                                                                                      §§push(_loc17_.y);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!(_loc27_ && this))
                                                                                                         {
                                                                                                            §§push(_loc22_.x);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               addr739:
                                                                                                               §§push(§§pop() - _loc17_.x);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr743);
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§goto(addr739);
                                                                                                }
                                                                                                §§goto(addr706);
                                                                                             }
                                                                                             §§goto(addr746);
                                                                                          }
                                                                                          §§goto(addr743);
                                                                                       }
                                                                                       §§goto(addr774);
                                                                                    }
                                                                                    §§goto(addr754);
                                                                                 }
                                                                                 addr671:
                                                                              }
                                                                              §§goto(addr786);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc22_ = this.§>!+§[_loc12_];
                                                                        }
                                                                        §§goto(addr671);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr632);
                                                         }
                                                         return §§pop();
                                                      }
                                                      param4.SetV(b2Math.§#!N§(param3,_loc20_));
                                                      §§goto(addr902);
                                                   }
                                                }
                                             }
                                             §§goto(addr654);
                                          }
                                          §§goto(addr880);
                                       }
                                       §§goto(addr632);
                                    }
                                    §§goto(addr884);
                                 }
                                 §§goto(addr558);
                              }
                              §§goto(addr547);
                           }
                           §§goto(addr504);
                        }
                        §§goto(addr488);
                     }
                     §§goto(addr454);
                  }
                  else
                  {
                     _loc7_[_loc12_] = b2Math.§9!;§(_loc5_,this.§>!+§[_loc12_]) - _loc6_;
                     §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                     if(_loc28_)
                     {
                        _loc23_ = §§pop();
                        §§push(_loc12_);
                        if(_loc28_)
                        {
                           §§push(0);
                           if(_loc28_ || param3)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc28_)
                                 {
                                    if(_loc23_)
                                    {
                                       if(!(_loc27_ && this))
                                       {
                                          §§push(_loc11_);
                                          if(_loc28_ || param3)
                                          {
                                             addr132:
                                             if(!§§pop())
                                             {
                                                if(!(_loc27_ && param3))
                                                {
                                                   addr140:
                                                   §§push(_loc12_ - 1);
                                                   if(!(_loc27_ && param2))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc28_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!_loc27_)
                                                         {
                                                            _loc8_++;
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               addr198:
                                                               _loc11_ = _loc23_;
                                                               _loc12_++;
                                                               addr163:
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr375);
                                                   }
                                                   else
                                                   {
                                                      addr189:
                                                      §§push(int(§§pop()));
                                                      if(!_loc27_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         if(!_loc27_)
                                                         {
                                                            _loc8_++;
                                                            if(!_loc27_)
                                                            {
                                                               §§goto(addr198);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      _loc10_ = §§pop();
                                                      if(!(_loc27_ && param3))
                                                      {
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       if(_loc11_)
                                       {
                                          if(!(_loc27_ && param1))
                                          {
                                             §§push(_loc12_);
                                             if(_loc28_ || this)
                                             {
                                                §§push(§§pop() - 1);
                                                if(_loc28_ || param3)
                                                {
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr358);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr261);
                        }
                        addr248:
                        return §§pop();
                     }
                     §§goto(addr132);
                  }
               }
               §§goto(addr363);
            }
            break;
         }
         §§push(§§pop() - 1);
         if(_loc28_)
         {
            §§push(int(§§pop()));
            if(!_loc27_)
            {
               §§goto(addr189);
            }
            §§goto(addr362);
         }
         §§goto(addr371);
      }
      
      public function §<!G§() : int
      {
         return this.§8k§;
      }
      
      public function §+F§() : Vector.<b2Vec2>
      {
         return this.§>!+§;
      }
      
      public function §1!_§() : Vector.<b2Vec2>
      {
         return this.§+!]§;
      }
      
      public function §7Z§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§>!+§[0].x * param1.x);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() + this.§>!+§[0].y * param1.y);
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
            if(!_loc7_)
            {
               while(§§pop() < this.§8k§)
               {
                  §§push(this.§>!+§[_loc4_].x * param1.x);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(this.§>!+§[_loc4_].y * param1.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              addr93:
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 _loc5_ = §§pop();
                                 if(_loc6_)
                                 {
                                    addr100:
                                    addr99:
                                    if(§§pop() > _loc3_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             break loop0;
                                          }
                                          §§push(int(§§pop()));
                                          if(_loc6_)
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc7_ && param1)
                                             {
                                             }
                                             break;
                                          }
                                          continue;
                                       }
                                       §§push(_loc5_);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr136:
                                          _loc3_ = Number(§§pop());
                                          if(_loc7_ && this)
                                          {
                                          }
                                          break;
                                       }
                                       §§goto(addr136);
                                    }
                                    _loc4_++;
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr93);
               }
               §§push(_loc2_);
               break;
            }
            break;
         }
         return §§pop();
      }
      
      public function § !v§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§>!+§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§>!+§[0].y * param1.y);
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
            while(§§pop() < this.§8k§)
            {
               §§push(this.§>!+§[_loc4_].x * param1.x);
               if(_loc6_ || this)
               {
                  §§push(this.§>!+§[_loc4_].y * param1.y);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              _loc5_ = §§pop();
                              if(!_loc7_)
                              {
                                 addr105:
                                 if(§§pop() <= _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§push(_loc5_);
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr150:
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           §§goto(addr105);
                        }
                        _loc3_ = §§pop();
                        if(!(_loc6_ || _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr105);
               }
               §§goto(addr150);
            }
            addr171:
            return this.§>!+§[_loc2_];
         }
      }
      
      private function §1K§() : Boolean
      {
         return false;
      }
      
      private function §9L§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§>!+§.length;
         while(_loc2_ < param1)
         {
            this.§>!+§[_loc2_] = new b2Vec2();
            if(_loc3_ && _loc3_)
            {
               break;
            }
            this.§+!]§[_loc2_] = new b2Vec2();
            if(_loc4_)
            {
               _loc2_++;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
      }
   }
}
