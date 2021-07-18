package §!"3§
{
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §<^§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §<^§ = new b2Mat22();
         }
      }
      
      b2internal var §1!F§:b2Vec2;
      
      b2internal var §["8§:Vector.<b2Vec2>;
      
      b2internal var §0!3§:Vector.<b2Vec2>;
      
      b2internal var §4C§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §<"@§ = b2internal::8x;
            loop1:
            while(true)
            {
               this.§1!F§ = new b2Vec2();
               while(true)
               {
                  this.§["8§ = new Vector.<b2Vec2>();
                  loop3:
                  while(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        this.§0!3§ = new Vector.<b2Vec2>();
                        while(!_loc2_)
                        {
                           §0!_§ = b2Settings.b2_polygonRadius;
                           do
                           {
                              this.§1!F§.§%y§();
                           }
                           while(_loc2_);
                           
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 return;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §9M§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§?"E§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §,r§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§-!;§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §`!P§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || param2)
         {
            _loc3_.§'X§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §9`§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§^!a§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §'g§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§,_§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §5!I§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(_loc18_ || param2)
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
         if(_loc18_ || param1)
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
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc18_ || _loc3_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc18_ || param2)
               {
                  §§push(_loc9_.x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     addr397:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr399:
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
                                    addr383:
                                    addr363:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr384:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr385:
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             addr386:
                                             while(_loc18_ || param1)
                                             {
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    while(_loc18_ || param2)
                                    {
                                       if(_loc17_ && b2PolygonShape)
                                       {
                                          continue loop3;
                                       }
                                       _loc13_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc10_.y);
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
               while(true)
               {
                  §§goto(addr353);
               }
            }
            §§goto(addr96);
         }
         if(!(_loc17_ && b2PolygonShape))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc18_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc17_ && param1))
            {
               addr438:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc18_)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr438);
      }
      
      b2internal static function §-1§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
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
                  if(!_loc26_)
                  {
                     _loc5_[param3] = _loc5_[0];
                     addr90:
                     if(true)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc4_++;
                     }
                     addr92:
                  }
                  loop1:
                  for(; _loc26_; §§goto(addr92))
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr90);
            }
            else
            {
               _loc5_[_loc4_] = param2[_loc4_];
            }
            §§goto(addr106);
         }
         var _loc6_:Number = Number.MAX_VALUE;
         if(_loc27_)
         {
            §§push(1);
            if(_loc27_ || param3)
            {
               _loc4_ = §§pop();
               if(_loc27_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1133:
               }
               §§goto(addr1136);
            }
            loop5:
            for(; §§pop() <= param3; §§goto(addr1133))
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
                        loop8:
                        while(true)
                        {
                           §§push(_loc5_[_loc4_].y - _loc7_.y);
                           loop9:
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
                                    while(_loc27_ || b2PolygonShape)
                                    {
                                       _loc10_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop17:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         loop19:
                                                         for(; _loc27_; while(!(_loc26_ && b2PolygonShape))
                                                         {
                                                            §§goto(addr886);
                                                            §§push(Number(§§pop()));
                                                            §§goto(addr708);
                                                         })
                                                         {
                                                            §§push(_loc10_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               addr901:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr902:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr903:
                                                                     while(true)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        addr904:
                                                                        while(true)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           addr905:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr906:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 addr907:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr654:
                                                               if(_loc26_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  addr662:
                                                                  if(!(_loc26_ && param2))
                                                                  {
                                                                     if(!_loc26_)
                                                                     {
                                                                        if(!_loc26_)
                                                                        {
                                                                           addr674:
                                                                           §§push(Number(_loc21_));
                                                                           loop84:
                                                                           while(true)
                                                                           {
                                                                              if(_loc27_)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 addr678:
                                                                                 if(!(_loc26_ && param3))
                                                                                 {
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       loop68:
                                                                                       while(true)
                                                                                       {
                                                                                          addr804:
                                                                                          §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             if(_loc27_ || param3)
                                                                                             {
                                                                                                addr814:
                                                                                                _loc20_ = §§pop();
                                                                                                loop69:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   loop70:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      addr779:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr780:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr783:
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr785:
                                                                                                         §§push(_loc9_ * _loc20_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr786:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      loop32:
                                                                                                      while(_loc27_)
                                                                                                      {
                                                                                                         _loc14_ = §§pop();
                                                                                                         loop33:
                                                                                                         while(_loc27_)
                                                                                                         {
                                                                                                            if(!(_loc27_ || param2))
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop36:
                                                                                                                  while(_loc27_)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(-Number.MAX_VALUE);
                                                                                                                        loop38:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop39:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop41:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(§§pop() >= param3)
                                                                                                                                          {
                                                                                                                                             loop44:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                            {
                                                                                                                                                               loop56:
                                                                                                                                                               while(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     addr467:
                                                                                                                                                                  }
                                                                                                                                                                  while(!(_loc26_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        loop59:
                                                                                                                                                                        while(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           while(_loc27_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0.95);
                                                                                                                                                                                 addr498:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    addr499:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       addr500:
                                                                                                                                                                                       loop64:
                                                                                                                                                                                       while(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop65:
                                                                                                                                                                                             while(_loc27_ || b2PolygonShape)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      while(_loc27_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc26_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr538:
                                                                                                                                                                                                                  if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(_loc27_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop6;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr690:
                                                                                                                                                                                                                     if(§§pop() >= _loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop59;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr903);
                                                                                                                                                                                                                        addr642:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        break loop84;
                                                                                                                                                                                                                        §§goto(addr678);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr692:
                                                                                                                                                                                                                     addr546:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc12_ = §§pop();
                                                                                                                                                                                                                        break loop33;
                                                                                                                                                                                                                        §§goto(addr538);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr886:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr814);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr780);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr771:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                     if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop15;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr734:
                                                                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr690);
                                                                                                                                                                                                                           addr753:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                        addr766:
                                                                                                                                                                                                                        while(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr771);
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * _loc20_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr785);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr765:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr735:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr736:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(_loc26_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop35;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop36;
                                                                                                                                                                                                               §§goto(addr662);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop56;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr633:
                                                                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                                                                      if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc17_++;
                                                                                                                                                                                                            break loop65;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr593:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr907);
                                                                                                                                                                                                      addr520:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr662);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr678);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop69;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr620:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr623:
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop84;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc26_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr633);
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr753);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr756:
                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr779);
                                                                                                                                                                                                   addr751:
                                                                                                                                                                                                   addr795:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                             addr508:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1132:
                                                                                                                                                                                          _loc4_++;
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr765);
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr779);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr785);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc27_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr654);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr903);
                                                                                                                                                                        }
                                                                                                                                                                        addr644:
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr647);
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr735);
                                                                                                                                                                        addr481:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr620);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr593);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr766);
                                                                                                                                                               }
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                  continue loop68;
                                                                                                                                                               }
                                                                                                                                                               continue loop9;
                                                                                                                                                               addr461:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr546);
                                                                                                                                                            addr306:
                                                                                                                                                            if(!(_loc27_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr314:
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  addr319:
                                                                                                                                                                  §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                  if(_loc27_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr327:
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr330:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr334:
                                                                                                                                                                              if(_loc27_ || b2PolygonShape)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc26_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr188:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc27_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr330);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr233:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop84;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr623);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr481);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr233);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr726);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr468);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr489);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr770);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr467);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr314);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr783);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr297:
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr306);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr498);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr500);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr319);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr188);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr233);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr905);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                 §§goto(addr334);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop5;
                                                                                                                                                                              addr872:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr497);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr690);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr330);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr783);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr499);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr674);
                                                                                                                                                }
                                                                                                                                                §§goto(addr461);
                                                                                                                                                addr431:
                                                                                                                                                if(_loc26_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(param1.R);
                                                                                                                                                loop51:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().col1);
                                                                                                                                                   if(_loc26_ && b2PolygonShape)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                      addr423:
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.R);
                                                                                                                                                         loop53:
                                                                                                                                                         while(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().col2);
                                                                                                                                                            loop54:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                               addr396:
                                                                                                                                                               addr421:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop54;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop53;
                                                                                                                                                                  }
                                                                                                                                                                  addr958:
                                                                                                                                                                  _loc25_ = §§pop();
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1130:
                                                                                                                                                                     addr1097:
                                                                                                                                                                     §§push(param1.center);
                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                     if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                     {
                                                                                                                                                                        addr1119:
                                                                                                                                                                        §§push(_loc25_.col1.x * _loc23_);
                                                                                                                                                                        §§push(_loc25_.col2.x);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1127:
                                                                                                                                                                           §§push(§§pop() * _loc24_);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     addr1131:
                                                                                                                                                                     §§push(param1.center);
                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_.y);
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc25_.col1);
                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc25_.col2);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1071:
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc24_);
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1077:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1085:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc26_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1093:
                                                                                                                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                  addr1027:
                                                                                                                                                                                                                  param1.§8"Q§.x = 0.5 * (_loc15_ - _loc13_);
                                                                                                                                                                                                                  addr1019:
                                                                                                                                                                                                                  addr1025:
                                                                                                                                                                                                                  addr1024:
                                                                                                                                                                                                                  addr1026:
                                                                                                                                                                                                                  addr1023:
                                                                                                                                                                                                                  addr1022:
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§8"Q§);
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                          if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1007:
                                                                                                                                                                                                                                             §§pop().y = §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                             addr1006:
                                                                                                                                                                                                                                             if(!(_loc26_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1019);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1132);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1131);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1019);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1025);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1024);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1026);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1006);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1023);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1027);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1007);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1022);
                                                                                                                                                                                                                     addr1030:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1094:
                                                                                                                                                                                                                  §§goto(addr1094);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1119);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1127);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1119);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1077);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1119);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1085);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1071);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1119);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1085);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1119);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1130);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1093);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1097);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1030);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().col1);
                                                                                                                                                                  break loop51;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop51;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      if(!(_loc27_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop5;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr431);
                                                                                                                                                   }
                                                                                                                                                   continue loop44;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr423);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                          }
                                                                                                                                          §§goto(addr826);
                                                                                                                                          addr606:
                                                                                                                                       }
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc27_ || param3)
                                                                                                         {
                                                                                                            §§goto(addr872);
                                                                                                            §§push(Number(Number.MAX_VALUE));
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§goto(addr904);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr902);
                                                                                             }
                                                                                             §§goto(addr903);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr906);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop84;
                                                                                    }
                                                                                    addr607:
                                                                                 }
                                                                                 §§goto(addr690);
                                                                              }
                                                                              §§goto(addr772);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc26_ && param1))
                                                                              {
                                                                                 §§goto(addr701);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr786);
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr850);
                                                                  }
                                                                  §§goto(addr775);
                                                               }
                                                               §§goto(addr607);
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
                                    continue loop10;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr867);
            }
         }
         addr1136:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc3_ && _loc3_))
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
               if(param1 is b2PolygonShape)
               {
                  addr32:
                  _loc2_ = param1 as b2PolygonShape;
                  if(_loc4_ || this)
                  {
                     this.§1!F§.SetV(_loc2_.§1!F§);
                  }
                  loop0:
                  while(true)
                  {
                     this.§4C§ = _loc2_.§4C§;
                     do
                     {
                        this.§-q§(this.§4C§);
                        continue loop0;
                     }
                     while(!(_loc4_ || _loc2_));
                     
                     loop3:
                     while(true)
                     {
                        if(_loc3_ < this.§4C§)
                        {
                           this.§["8§[_loc3_].SetV(_loc2_.§["8§[_loc3_]);
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§0!3§[_loc3_].SetV(_loc2_.§0!3§[_loc3_]);
                                 if(_loc5_)
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
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function §?"E§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc8_)
         {
            this.§-!;§(_loc3_,param2);
         }
      }
      
      public function §-!;§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc7_ || param1)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr225:
                     while(true)
                     {
                        param2 = §§pop();
                        addr226:
                        while(true)
                        {
                        }
                     }
                  }
                  addr222:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop2:
                  while(!_loc8_)
                  {
                     if(_loc7_)
                     {
                        this.§4C§ = param2;
                        while(true)
                        {
                           this.§-q§(param2);
                           loop4:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 _loc3_ = 0;
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    if(_loc7_ || this)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(this.§4C§);
                                    if(!_loc7_)
                                    {
                                       addr301:
                                       loop14:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc7_ || this)
                                             {
                                                this.§1!F§ = §5!I§(this.§["8§,this.§4C§);
                                                break;
                                             }
                                             break;
                                          }
                                          §§push(_loc3_);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             do
                                             {
                                                _loc4_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc8_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                             while(_loc8_);
                                             
                                             §§push(1);
                                             if(!_loc8_)
                                             {
                                                addr84:
                                                §§push(int(§§pop() + §§pop()));
                                                if(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr93:
                                                      §§push(int(§§pop()));
                                                      if(_loc7_ || param2)
                                                      {
                                                         addr101:
                                                         _loc5_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            break loop14;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop23;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop23;
                                             }
                                             continue loop14;
                                          }
                                       }
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                addr127:
                                                while(true)
                                                {
                                                   addr298:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      addr299:
                                                      while(true)
                                                      {
                                                         §§push(this.§4C§);
                                                         §§goto(addr301);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.§["8§[_loc3_].SetV(param1[_loc3_]);
                                    }
                                    _loc3_++;
                                    continue;
                                    return;
                                 }
                                 §§goto(addr299);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr222);
                     }
                  }
                  §§goto(addr226);
               }
            }
            §§goto(addr225);
         }
         §§goto(addr200);
      }
      
      public function §'X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§4C§ = 4;
            loop0:
            while(true)
            {
               this.§-q§(4);
               addr173:
               while(true)
               {
                  this.§["8§[0].Set(-param1,-param2);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§["8§[1].Set(param1,-param2);
            loop4:
            while(true)
            {
               this.§["8§[2].Set(param1,param2);
               loop5:
               while(true)
               {
                  this.§["8§[3].Set(-param1,param2);
                  loop6:
                  while(true)
                  {
                     this.§0!3§[0].Set(0,-1);
                     loop7:
                     while(_loc3_)
                     {
                        this.§0!3§[1].Set(1,0);
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break;
                              addr70:
                           }
                           this.§0!3§[2].Set(0,1);
                           while(!_loc4_)
                           {
                              continue loop4;
                           }
                           continue loop7;
                           addr54:
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           this.§1!F§.§%y§();
                           addr61:
                           if(!(_loc3_ || param1))
                           {
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr54);
                                 }
                                 else
                                 {
                                    §§goto(addr70);
                                 }
                              }
                              continue;
                              addr52:
                           }
                           if(_loc4_)
                           {
                              continue loop6;
                           }
                           §§goto(addr36);
                        }
                        continue loop5;
                     }
                     §§goto(addr173);
                  }
               }
            }
         }
      }
      
      public function §^!a§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§4C§ = 4;
            while(true)
            {
               this.§-q§(4);
               loop1:
               while(_loc7_)
               {
                  this.§["8§[0].Set(-param1,-param2);
                  addr106:
                  if(!(_loc7_ || param2))
                  {
                     continue;
                  }
                  this.§0!3§[1].Set(1,0);
                  loop7:
                  while(true)
                  {
                     this.§0!3§[2].Set(0,1);
                     loop8:
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           if(_loc7_)
                           {
                              addr74:
                              if(!(_loc8_ && param2))
                              {
                                 while(true)
                                 {
                                    this.§0!3§[3].Set(-1,0);
                                    addr54:
                                    addr37:
                                    while(!(_loc8_ && this))
                                    {
                                       this.§1!F§ = param3;
                                       if(_loc7_ || param3)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    addr37:
                                    if(!(_loc7_ || this))
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    var _loc5_:b2Transform;
                                    (_loc5_ = new b2Transform()).position = param3;
                                    if(_loc7_ || this)
                                    {
                                       _loc5_.R.Set(param4);
                                    }
                                    var _loc6_:int = 0;
                                    addr196:
                                    if(_loc6_ >= this.§4C§)
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          if(_loc8_ && param3)
                                          {
                                             this.§0!3§[_loc6_] = b2Math.§5!w§(_loc5_.R,this.§0!3§[_loc6_]);
                                             _loc6_++;
                                             addr220:
                                             if(_loc7_)
                                             {
                                                §§goto(addr196);
                                             }
                                             addr246:
                                             §§goto(addr246);
                                             addr260:
                                          }
                                          return;
                                       }
                                       §§goto(addr220);
                                    }
                                    this.§["8§[_loc6_] = b2Math.§^T§(_loc5_,this.§["8§[_loc6_]);
                                    §§goto(addr260);
                                 }
                                 while(true)
                                 {
                                    this.§0!3§[0].Set(0,-1);
                                    break loop8;
                                    §§goto(addr37);
                                 }
                                 addr133:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§["8§[1].Set(param1,-param2);
                                    addr152:
                                    while(true)
                                    {
                                       this.§["8§[2].Set(param1,param2);
                                       break loop8;
                                    }
                                    §§goto(addr74);
                                 }
                                 addr163:
                              }
                              while(true)
                              {
                                 this.§["8§[3].Set(-param1,param2);
                                 §§goto(addr133);
                                 §§goto(addr54);
                              }
                           }
                           break;
                        }
                        continue loop7;
                     }
                     while(true)
                     {
                        if(!(_loc8_ && param2))
                        {
                           §§goto(addr106);
                        }
                        else
                        {
                           §§goto(addr152);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr163);
      }
      
      public function §,_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§4C§ = 2;
            loop0:
            while(true)
            {
               this.§-q§(2);
               while(true)
               {
                  this.§["8§[0].SetV(param1);
                  addr206:
                  while(!_loc3_)
                  {
                     this.§["8§[1].SetV(param2);
                  }
                  continue loop0;
                  addr173:
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  addr190:
                  §§push(this.§1!F§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(0.5);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(param1.y);
                        if(_loc4_ || _loc3_)
                        {
                           addr134:
                           §§push(param2.y);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr144:
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 addr147:
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop().y = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       this.§0!3§[0] = b2Math.§@!§(b2Math.§9N§(param2,param1),1);
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc4_ || param2)
                                          {
                                             if(_loc4_)
                                             {
                                                this.§0!3§[0].Normalize();
                                                while(_loc4_ || this)
                                                {
                                                   this.§0!3§[1].x = -this.§0!3§[0].x;
                                                   do
                                                   {
                                                      this.§0!3§[1].y = -this.§0!3§[0].y;
                                                   }
                                                   while(!(_loc4_ || param2));
                                                   
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§1!F§);
                                                   addr159:
                                                   while(true)
                                                   {
                                                      §§push(0.5);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(param1.x);
                                                         if(_loc4_)
                                                         {
                                                            §§push(param2.x);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               §§goto(addr134);
                                                            }
                                                            addr168:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         addr169:
                                                      }
                                                      addr170:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         break loop10;
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr67);
                                                }
                                                addr67:
                                                addr198:
                                             }
                                             break;
                                          }
                                          continue loop9;
                                       }
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr173);
                                          }
                                          else
                                          {
                                             §§goto(addr206);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr159);
               }
            }
         }
         §§goto(addr198);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(!(_loc12_ && param2))
         {
            §§push(§§pop() - param1.position.x);
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(!(_loc12_ && param1))
         {
            §§push(§§pop() - param1.position.y);
            if(!(_loc12_ && param2))
            {
               addr62:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(!(_loc12_ && param2))
            {
               §§push(_loc4_.col1.x);
               if(!_loc12_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc11_ || param1)
                  {
                     addr85:
                     §§push(_loc6_);
                     if(!(_loc12_ && this))
                     {
                        addr97:
                        §§push(§§pop() + §§pop() * _loc4_.col1.y);
                        if(_loc11_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr97);
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(!_loc12_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc11_)
                     {
                        §§goto(addr143);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc11_ || param2)
                     {
                        addr143:
                        §§goto(addr144);
                     }
                     addr144:
                     §§push(§§pop() * §§pop());
                     if(_loc11_)
                     {
                        §§push(_loc6_);
                        if(_loc11_)
                        {
                           §§push(§§pop() * _loc4_.col2.y);
                        }
                     }
                     var _loc8_:Number = §§pop();
                     var _loc9_:int = 0;
                     while(true)
                     {
                        if(_loc9_ >= this.§4C§)
                        {
                           return true;
                        }
                        _loc3_ = this.§["8§[_loc9_];
                        if(_loc11_)
                        {
                           §§push(_loc7_);
                           if(!_loc12_)
                           {
                              §§push(_loc3_.x);
                              if(!_loc12_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc11_)
                                 {
                                    addr167:
                                    §§push(Number(§§pop()));
                                    if(_loc11_ || param1)
                                    {
                                       addr175:
                                       _loc5_ = §§pop();
                                       if(_loc11_ || this)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc12_)
                                          {
                                             addr186:
                                             addr188:
                                             §§push(§§pop() - _loc3_.y);
                                             if(!_loc12_)
                                             {
                                                addr191:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc6_ = §§pop();
                                             addr193:
                                             _loc3_ = this.§0!3§[_loc9_];
                                             if(!(_loc11_ || param2))
                                             {
                                                continue;
                                             }
                                             §§push(_loc3_.x);
                                             if(!(_loc12_ && param2))
                                             {
                                                §§push(_loc5_);
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(_loc3_.y);
                                                      if(_loc11_)
                                                      {
                                                         addr235:
                                                         §§push(§§pop() * _loc6_);
                                                         if(_loc11_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc11_)
                                                            {
                                                               addr257:
                                                               §§push(Number(§§pop()));
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     addr263:
                                                                     _loc10_ = §§pop();
                                                                     addr264:
                                                                     §§push(0);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr264);
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
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr257);
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr186);
                     }
                     return false;
                  }
                  §§goto(addr143);
               }
               §§goto(addr97);
            }
            §§goto(addr85);
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
         if(_loc21_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§;"I§);
         if(_loc21_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_)
         {
            §§push(param2.p1);
            if(_loc21_ || param2)
            {
               §§push(§§pop().x);
               if(_loc21_)
               {
                  §§push(param3.position);
                  if(_loc21_ || this)
                  {
                     §§push(§§pop().x);
                     if(!_loc20_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_ || this)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || this)
                           {
                              _loc6_ = §§pop();
                              if(!_loc20_)
                              {
                                 addr99:
                                 §§push(param2.p1.y);
                                 if(_loc20_ && param3)
                                 {
                                 }
                                 addr119:
                                 _loc7_ = Number(§§pop());
                                 addr120:
                                 _loc8_ = param3.R;
                                 §§push(_loc6_);
                                 if(!_loc20_)
                                 {
                                    §§push(_loc8_.col1.x);
                                    if(!_loc20_)
                                    {
                                       addr151:
                                       §§push(§§pop() * §§pop());
                                       if(_loc21_ || param3)
                                       {
                                          §§push(_loc7_);
                                          if(_loc21_)
                                          {
                                             §§push(§§pop() * _loc8_.col1.y);
                                          }
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(!(_loc20_ && param3))
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc20_ && param2))
                                             {
                                                §§push(_loc7_);
                                                if(_loc21_ || param3)
                                                {
                                                   addr181:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc20_ && this))
                                                {
                                                   addr193:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                if(!(_loc20_ && param3))
                                                {
                                                   §§push(param2.p2);
                                                   if(!(_loc20_ && this))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc20_ && param2))
                                                      {
                                                         §§push(param3.position);
                                                         if(_loc21_ || param1)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc21_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc20_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr242:
                                                                        §§push(param2.p2.y);
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr245:
                                                                           addr248:
                                                                           addr247:
                                                                           §§push(§§pop() - param3.position.y);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              addr256:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc7_ = §§pop();
                                                                           addr258:
                                                                           _loc8_ = param3.R;
                                                                           §§push(_loc6_);
                                                                           if(_loc21_)
                                                                           {
                                                                              §§push(_loc8_.col1.x);
                                                                              if(_loc21_ || this)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(!(_loc20_ && param3))
                                                                                    {
                                                                                       addr286:
                                                                                       §§push(§§pop() * _loc8_.col1.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr293:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc6_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc8_.col2.x);
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr311:
                                                                                             §§push(_loc7_);
                                                                                             if(_loc21_ || param3)
                                                                                             {
                                                                                                addr323:
                                                                                                §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(_loc12_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc10_);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                addr335:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             §§push(_loc13_);
                                                                                             if(_loc21_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() - _loc11_);
                                                                                                if(!(_loc20_ && param3))
                                                                                                {
                                                                                                   addr354:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc15_:* = §§pop();
                                                                                                var _loc16_:* = -1;
                                                                                                var _loc17_:int = 0;
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   if(!(_loc20_ && param2))
                                                                                                   {
                                                                                                      §§push(this.§4C§);
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§goto(addr838);
                                                                                                         }
                                                                                                         §§push((_loc9_ = this.§["8§[_loc17_]).x);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            if(_loc21_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr383:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                        {
                                                                                                                           addr398:
                                                                                                                           §§push(§§pop() - _loc11_);
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc7_ = §§pop();
                                                                                                                     }
                                                                                                                     §§push((_loc9_ = this.§0!3§[_loc17_]).x);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(_loc21_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!(_loc20_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc20_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc21_ || param3)
                                                                                                                                          {
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.x);
                                                                                                                                                loop1:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop2:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_.y);
                                                                                                                                                         loop3:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            loop4:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  loop5:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(_loc21_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        addr796:
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        loop43:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                           addr797:
                                                                                                                                                                           loop42:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              addr798:
                                                                                                                                                                              loop40:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    loop33:
                                                                                                                                                                                    while(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr754:
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       loop11:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc21_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             loop19:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                loop18:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop15:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         loop25:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc20_ && param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            loop26:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               if(_loc21_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  loop44:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     loop30:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                        loop20:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop21:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop18;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop17:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                                                                    loop31:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                       addr742:
                                                                                                                                                                                                                                       loop45:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                          addr743:
                                                                                                                                                                                                                                          loop48:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             loop32:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                                                                                                                   loop34:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                                                                                                                      addr715:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop34;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   loop9:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop5;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_ && param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr545:
                                                                                                                                                                                                                                                                  §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(false);
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc21_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop23:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop13:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                   loop14:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop11;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                            addr569:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop45;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                               if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr620:
                                                                                                                                                                                                                                                                                                               addr620:
                                                                                                                                                                                                                                                                                                               loop10:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 continue loop2;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop42;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr800:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                              break loop10;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr672:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                     continue loop23;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr802:
                                                                                                                                                                                                                                                                                                                     §§push(false);
                                                                                                                                                                                                                                                                                                                     break loop14;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr748:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop9;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr802);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr803:
                                                                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                                                                   addr694:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop21;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr620);
                                                                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr613:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr715);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr694);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr802);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr659:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr659:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr592);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           loop22:
                                                                                                                                                                                                                                                                           while(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc17_++;
                                                                                                                                                                                                                                                                                 if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop9;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop9;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr659);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr490);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr569);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr620);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr545);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr568);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr613);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr672);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr738:
                                                                                                                                                                                                                              addr671:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr803);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr729:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr742);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr748);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr738);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr671);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop1;
                                                                                                                                                                                 }
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
                                                                                                                                                               §§goto(addr798);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr796);
                                                                                                                                                }
                                                                                                                                                addr776:
                                                                                                                                             }
                                                                                                                                             §§goto(addr802);
                                                                                                                                          }
                                                                                                                                          §§goto(addr776);
                                                                                                                                       }
                                                                                                                                       §§goto(addr797);
                                                                                                                                    }
                                                                                                                                    §§goto(addr796);
                                                                                                                                 }
                                                                                                                                 §§goto(addr729);
                                                                                                                              }
                                                                                                                              §§goto(addr742);
                                                                                                                           }
                                                                                                                           §§goto(addr658);
                                                                                                                        }
                                                                                                                        §§goto(addr762);
                                                                                                                     }
                                                                                                                     §§goto(addr743);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr398);
                                                                                                         }
                                                                                                         §§goto(addr383);
                                                                                                      }
                                                                                                      §§goto(addr827);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr827:
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   return false;
                                                                                                }
                                                                                                if(!(_loc20_ && param3))
                                                                                                {
                                                                                                   param1.fraction = _loc4_;
                                                                                                }
                                                                                                addr838:
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   break loop0;
                                                                                                }
                                                                                                _loc8_ = param3.R;
                                                                                                _loc9_ = this.§0!3§[_loc16_];
                                                                                                if(!(_loc20_ && param2))
                                                                                                {
                                                                                                   §§push(param1.normal);
                                                                                                   loop49:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col1);
                                                                                                      addr936:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr937:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_.x);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr947:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        addr949:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr950:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr946:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop49;
                                                                                                               }
                                                                                                               addr951:
                                                                                                            }
                                                                                                            §§goto(addr950);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr934:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.normal);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(_loc8_.col1);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(_loc9_.x);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        if(_loc21_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc8_.col2);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    addr910:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr913:
                                                                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr950);
                                                                                                                              }
                                                                                                                              §§goto(addr910);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr946);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr937);
                                                                                                                        }
                                                                                                                        §§goto(addr950);
                                                                                                                     }
                                                                                                                     §§goto(addr913);
                                                                                                                  }
                                                                                                                  §§goto(addr947);
                                                                                                               }
                                                                                                               §§goto(addr910);
                                                                                                            }
                                                                                                            §§goto(addr951);
                                                                                                         }
                                                                                                         §§goto(addr913);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr936);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr934);
                                                                                                   }
                                                                                                   §§goto(addr936);
                                                                                                }
                                                                                                return true;
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                     }
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc21_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr151);
                                 addr118:
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr118);
                        }
                        addr109:
                        §§push(param3.position.y);
                     }
                     §§push(§§pop() - §§pop());
                     if(!(_loc20_ && param2))
                     {
                        §§goto(addr120);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr109);
               }
               §§goto(addr119);
            }
         }
         §§goto(addr99);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§["8§[0];
         §§push(param2.position.x);
         if(!(_loc12_ && this))
         {
            §§push(_loc3_.col1.x);
            if(!_loc12_)
            {
               §§push(_loc4_.x);
               if(!_loc12_)
               {
                  addr67:
                  §§push(§§pop() * §§pop());
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(_loc3_.col2.x);
                     if(!_loc12_)
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc12_)
                  {
                     addr71:
                     var _loc5_:* = Number(§§pop());
                     §§push(param2.position.y);
                     if(_loc13_ || this)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc13_ || param2)
                        {
                           §§push(_loc4_.x);
                           if(!_loc12_)
                           {
                              addr108:
                              §§push(§§pop() * §§pop());
                              if(_loc13_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() * _loc4_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc12_ && this))
                              {
                                 addr116:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc5_);
                              if(_loc13_ || this)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc12_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              loop0:
                              while(_loc9_ < this.§4C§)
                              {
                                 _loc4_ = this.§["8§[_loc9_];
                                 if(!_loc12_)
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
                                                if(_loc13_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr519:
                                                      addr362:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr520:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr522:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                         }
                                                      }
                                                      if(!(_loc13_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() < §§pop());
                                                      loop30:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(_loc11_);
                                                            loop31:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop32:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop36:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr385:
                                                                     loop40:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        loop41:
                                                                        while(!_loc12_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           loop42:
                                                                           while(_loc13_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 loop43:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       loop44:
                                                                                       while(!_loc12_)
                                                                                       {
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop45:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop46:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   loop47:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop48:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!(_loc12_ && this))
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(_loc13_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc12_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     continue loop43;
                                                                                                                  }
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  addr202:
                                                                                                                  if(_loc13_ || param1)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           if(!(_loc13_ || param2))
                                                                                                                           {
                                                                                                                              continue loop46;
                                                                                                                           }
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!(_loc12_ && this))
                                                                                                                           {
                                                                                                                              addr280:
                                                                                                                              loop52:
                                                                                                                              while(!_loc12_)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    loop53:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr302:
                                                                                                                                       while(_loc13_)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          while(!_loc12_)
                                                                                                                                          {
                                                                                                                                             _loc9_++;
                                                                                                                                             if(_loc12_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc12_ && this))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      continue loop48;
                                                                                                                                                   }
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                continue loop40;
                                                                                                                                             }
                                                                                                                                             addr210:
                                                                                                                                             loop51:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!(_loc13_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop52;
                                                                                                                                                                  }
                                                                                                                                                                  addr243:
                                                                                                                                                                  if(!(_loc13_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc12_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop53;
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc13_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr411:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr426:
                                                                                                                                                                        while(_loc13_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(_loc13_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                 break loop42;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop36;
                                                                                                                                                                              addr371:
                                                                                                                                                                              while(_loc13_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr380:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop2;
                                                                                                                                                                        §§goto(addr411);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr526:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                        continue loop1;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr404:
                                                                                                                                                                  addr525:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr379);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop52;
                                                                                                                                                            }
                                                                                                                                                            addr335:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr243);
                                                                                                                                                      }
                                                                                                                                                      loop37:
                                                                                                                                                      while(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         while(_loc13_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr404);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.col1);
                                                                                                                                                            if(_loc12_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_.x);
                                                                                                                                                               if(!_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_.col2);
                                                                                                                                                                     if(!(_loc13_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(!(_loc12_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_.y);
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc13_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr495:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          addr496:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr497:
                                                                                                                                                                                             while(_loc13_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                break loop37;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr526);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr495:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr520);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr523:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    addr524:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr525);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr485:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr522);
                                                                                                                                                                        addr480:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr485);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr519);
                                                                                                                                                                  addr463:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr480);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr495);
                                                                                                                                                            §§goto(addr396);
                                                                                                                                                         }
                                                                                                                                                         addr396:
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         break loop41;
                                                                                                                                                      }
                                                                                                                                                      addr393:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr371);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr434);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      break loop51;
                                                                                                                                                   }
                                                                                                                                                   addr319:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc12_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr335);
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr396);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr421:
                                                                                                                                                while(_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr496);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr425);
                                                                                                                                                }
                                                                                                                                                §§goto(addr497);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop47;
                                                                                                                                       }
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr380);
                                                                                                                              }
                                                                                                                              continue loop45;
                                                                                                                              addr280:
                                                                                                                           }
                                                                                                                           §§goto(addr302);
                                                                                                                        }
                                                                                                                        §§goto(addr280);
                                                                                                                     }
                                                                                                                     §§goto(addr210);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr393);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!(_loc12_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr421);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr426);
                                                                                                                     }
                                                                                                                     §§goto(addr202);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         §§goto(addr280);
                                                                                                      }
                                                                                                      addr389:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§goto(addr392);
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                         }
                                                                                                         §§goto(addr463);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr426);
                                                                                       }
                                                                                       continue loop31;
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                              }
                                                                              §§goto(addr495);
                                                                           }
                                                                           while(_loc13_ || param2)
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                           §§goto(addr524);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr389);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                   }
                                                }
                                                §§goto(addr523);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr385);
                              }
                              if(_loc13_)
                              {
                                 §§push(param1.§8"S§);
                                 if(_loc13_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_ || param1)
                                    {
                                       §§push(§§pop() - b2internal::0!_);
                                       if(_loc13_)
                                       {
                                          §§goto(addr550);
                                       }
                                       §§goto(addr614);
                                    }
                                    addr550:
                                    §§pop().x = §§pop();
                                    if(!(_loc12_ && param1))
                                    {
                                       addr609:
                                       §§push(param1.§8"S§);
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          addr614:
                                          §§pop().y = §§pop() - b2internal::0!_;
                                          loop61:
                                          while(true)
                                          {
                                             §§push(param1.§4B§);
                                             addr595:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr596:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop() + b2internal::0!_;
                                                   addr599:
                                                   while(!(_loc13_ || param2))
                                                   {
                                                      continue loop61;
                                                   }
                                                }
                                             }
                                          }
                                          addr615:
                                       }
                                       §§goto(addr614);
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§4B§);
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          §§push(_loc8_);
                                          if(!_loc12_)
                                          {
                                             §§pop().y = §§pop() + b2internal::0!_;
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr595);
                                       }
                                       §§goto(addr596);
                                    }
                                    return;
                                 }
                                 §§goto(addr609);
                              }
                              §§goto(addr615);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr71);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr67);
         }
         §§goto(addr71);
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
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         if(!(_loc27_ && param2))
         {
            if(this.§4C§ == 2)
            {
               if(!(_loc27_ && _loc3_))
               {
                  addr131:
                  §§push(param1.center);
                  while(true)
                  {
                     §§push(0.5);
                     if(_loc28_)
                     {
                        §§push(§§pop() * (this.§["8§[0].x + this.§["8§[1].x));
                     }
                     addr148:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
                  addr133:
               }
               while(true)
               {
                  §§push(param1.center);
                  if(!_loc27_)
                  {
                     §§push(0.5);
                     if(!(_loc27_ && _loc3_))
                     {
                        if(!(_loc27_ && _loc3_))
                        {
                           §§push(§§pop() * (this.§["8§[0].y + this.§["8§[1].y));
                        }
                        else
                        {
                           §§goto(addr148);
                        }
                     }
                     §§pop().y = §§pop();
                     param1.§'"N§ = 0;
                     param1.§@!6§ = 0;
                     if(!(_loc27_ && param1))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr133);
                  §§goto(addr148);
               }
               return;
            }
            §§push(0);
            if(!_loc27_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(0);
            if(_loc28_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(0);
            if(!_loc27_)
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
            if(_loc28_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(_loc28_ || param1)
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
            loop0:
            while(_loc10_ < this.§4C§)
            {
               _loc11_ = this.§["8§[_loc10_];
               if(_loc28_ || _loc3_)
               {
                  _loc12_ = _loc10_ + 1 < this.§4C§ ? this.§["8§[int(_loc10_ + 1)] : this.§["8§[0];
                  if(_loc28_ || this)
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
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr1096:
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
                                                                           while(true)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    addr1065:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr1066:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc14_);
                                                                                          if(_loc28_ || this)
                                                                                          {
                                                                                             addr1075:
                                                                                             §§push(_loc15_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             addr1075:
                                                                                          }
                                                                                          addr1076:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1077:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1078:
                                                                                                while(_loc28_)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   while(_loc28_)
                                                                                                   {
                                                                                                      while(!(_loc27_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    loop68:
                                                                                    while(_loc28_ || this)
                                                                                    {
                                                                                       _loc20_ = §§pop();
                                                                                       loop69:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          addr914:
                                                                                          loop70:
                                                                                          for(; !(_loc27_ && _loc3_); if(_loc27_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          },§§goto(addr838))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop71:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc21_ = §§pop();
                                                                                                loop72:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   loop73:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop74:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            if(_loc28_ || param2)
                                                                                                            {
                                                                                                               if(!(_loc28_ || param1))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc22_ = §§pop();
                                                                                                               while(_loc28_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  while(_loc28_ || param2)
                                                                                                                  {
                                                                                                                     if(!(_loc27_ && this))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        continue loop71;
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr1066);
                                                                                                               }
                                                                                                               loop51:
                                                                                                               for(; _loc28_; §§goto(addr904))
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  loop52:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc18_);
                                                                                                                     loop53:
                                                                                                                     while(!(_loc27_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        loop54:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop55:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              loop56:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc11_.y);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_.y);
                                                                                                                                       addr761:
                                                                                                                                       while(!(_loc27_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             addr770:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr771:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr772:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr773:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            continue loop53;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc28_ || param2))
                                                                                                                                                         {
                                                                                                                                                            continue loop73;
                                                                                                                                                         }
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr785:
                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr793:
                                                                                                                                                            §§push(0.5);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               addr794:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr795:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     addr796:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr797:
                                                                                                                                                                        addr1001:
                                                                                                                                                                        while(_loc28_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              continue loop73;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                        addr1001:
                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc11_.x);
                                                                                                                                                                              addr1006:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr1007:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_.x);
                                                                                                                                                                                    addr1009:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       addr1010:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr1011:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr1012:
                                                                                                                                                                                             while(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                while(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   addr1049:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      break loop74;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1078);
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
                                                                                                                                                            addr793:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            continue loop6;
                                                                                                                                                            §§goto(addr785);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop58:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop59:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop60:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop61:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop62:
                                                                                                                                             while(_loc28_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         while(_loc28_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            while(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  break loop70;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop62;
                                                                                                                                                            if(!(_loc28_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                               loop81:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  addr703:
                                                                                                                                                                  addr1058:
                                                                                                                                                                  loop82:
                                                                                                                                                                  while(_loc28_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.25);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                              addr717:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr718:
                                                                                                                                                                                 while(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                          if(!(_loc27_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr734:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!(_loc27_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop54;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                      addr753:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr754:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            addr755:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr756:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  addr757:
                                                                                                                                                                                                                  while(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr761);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1075);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr772);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                             addr734:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr753);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1009);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr734);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1007);
                                                                                                                                                                              }
                                                                                                                                                                              addr482:
                                                                                                                                                                              if(!(_loc28_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                 if(_loc28_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr499:
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc24_);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr504:
                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         loop117:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc27_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc28_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc27_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                    loop110:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          loop115:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                             if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr572:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                                                                                                                   addr573:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr572:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr574:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop102:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop59;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(_loc28_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc28_ || _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop60;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc28_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr618:
                                                                                                                                                                                                                                                                     if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop61;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr637:
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr648:
                                                                                                                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr651:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             while(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      loop118:
                                                                                                                                                                                                                                                                                                      while(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop74;
                                                                                                                                                                                                                                                                                                            addr380:
                                                                                                                                                                                                                                                                                                            if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr392:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr394:
                                                                                                                                                                                                                                                                                                                     _loc6_ = §§pop();
                                                                                                                                                                                                                                                                                                                     do
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc10_++;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(!(_loc28_ || param2));
                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                     if(!(_loc27_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop11;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop68;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr392);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                                                                                                                       addr287:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop69;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop72;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 addr829:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr851);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1015);
                                                                                                                                                                                                                                                                                                                                 §§goto(addr618);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                                                                                                                           addr881:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc28_ || param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                              if(_loc27_ && _loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop118;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop73;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop71;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(0.25);
                                                                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop117;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop58;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop115;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                   if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop110;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(_loc27_ && this)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop102;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr482);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1006);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr717);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr753);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr504);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr499);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr771);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr572);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1001);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1000:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1004);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr770);
                                                                                                                                                                                                                                                                                                                                 addr420:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr756);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr949);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop10;
                                                                                                                                                                                                                                                                                                                        addr816:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop81;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1077);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr752);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop82;
                                                                                                                                                                                                                                                                                                      addr668:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr671);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr795);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr797);
                                                                                                                                                                                                                                                                                             addr651:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr796);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr648:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr651);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr757);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr794);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr651);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr828);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr829);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc25_ = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr816);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr815:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr668);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr671);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr637);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                                                                      addr579:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr648);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr754);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr564:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr752);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr561:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr718);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr755);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr761);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr772);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr537:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr579);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1026:
                                                                                                                                                                                                            while(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1029);
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               continue loop117;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1049);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1076);
                                                                                                                                                                                                         addr520:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr537);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr769);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr512:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr770);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr573);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr760);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr572);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1004);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1000);
                                                                                                                                                                           }
                                                                                                                                                                           addr999:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1001);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr793);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc18_ = §§pop();
                                                                                                                                                                     break loop51;
                                                                                                                                                                     §§goto(addr703);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1015);
                                                                                                                                                         }
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1038);
                                                                                                                                                      if(!(_loc28_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr287);
                                                                                                                                                   }
                                                                                                                                                   continue loop5;
                                                                                                                                                }
                                                                                                                                                continue loop8;
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
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr904:
                                                                                                               while(_loc28_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  §§goto(addr1026);
                                                                                                                  §§push(_loc18_);
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr946);
                                                                                                      }
                                                                                                      while(!(_loc27_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr1058);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop68;
                                                                                             §§goto(addr914);
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
                  }
                  while(true)
                  {
                     §§goto(addr1048);
                  }
               }
               §§goto(addr236);
            }
            if(_loc28_ || param2)
            {
               §§push(param1);
               §§push(param2);
               if(_loc28_)
               {
                  §§push(§§pop() * _loc5_);
               }
               §§pop().§'"N§ = §§pop();
               if(!_loc27_)
               {
                  §§push(_loc3_);
                  if(_loc28_ || param1)
                  {
                     §§push(1);
                     while(true)
                     {
                        §§push(_loc5_);
                        addr1235:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr1236:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                           }
                        }
                     }
                     addr1234:
                  }
                  loop129:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop130:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!(_loc27_ && _loc3_))
                           {
                              §§push(1);
                              if(_loc28_)
                              {
                                 §§push(_loc5_);
                                 if(_loc27_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(!(_loc27_ && _loc3_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc28_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr1236);
                                 }
                              }
                              else
                              {
                                 §§goto(addr1234);
                              }
                           }
                           if(!(_loc27_ && param2))
                           {
                              if(!(_loc27_ && _loc3_))
                              {
                                 _loc4_ = §§pop();
                                 loop132:
                                 while(_loc28_)
                                 {
                                    while(true)
                                    {
                                       param1.center.Set(_loc3_,_loc4_);
                                       do
                                       {
                                          §§push(param1);
                                          §§push(param2);
                                          if(_loc28_ || _loc3_)
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().§@!6§ = §§pop();
                                       }
                                       while(_loc27_);
                                       
                                       if(!_loc27_)
                                       {
                                          break;
                                       }
                                       continue loop132;
                                    }
                                    return;
                                 }
                                 continue;
                              }
                              continue loop129;
                           }
                           continue loop130;
                        }
                        §§goto(addr1235);
                     }
                  }
               }
            }
            §§goto(addr1224);
         }
         §§goto(addr131);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1006
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §"R§() : int
      {
         return this.§4C§;
      }
      
      public function §,!N§() : Vector.<b2Vec2>
      {
         return this.§["8§;
      }
      
      public function §""Y§() : Vector.<b2Vec2>
      {
         return this.§0!3§;
      }
      
      public function §;"L§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§["8§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§["8§[0].y * param1.y);
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
            if(_loc7_)
            {
               if(_loc7_)
               {
                  if(§§pop() >= this.§4C§)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc7_ || _loc3_)
                        {
                           addr81:
                           §§push(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           loop11:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr163:
                              loop10:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr164:
                                 addr107:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             break;
                                          }
                                          addr136:
                                          while(true)
                                          {
                                             §§push(this.§["8§[_loc4_].y * param1.y);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   addr150:
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                         addr159:
                                                      }
                                                   }
                                                   addr150:
                                                }
                                                §§goto(addr150);
                                             }
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      _loc4_++;
                                                      addr88:
                                                      while(!_loc7_)
                                                      {
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr86:
                                                }
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr159);
                                    continue loop10;
                                 }
                                 _loc3_ = §§pop();
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc7_ || param1)
                           {
                              §§goto(addr86);
                           }
                           §§goto(addr164);
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr88);
                  }
                  else
                  {
                     §§push(this.§["8§[_loc4_].x * param1.x);
                  }
                  §§goto(addr136);
               }
               §§goto(addr163);
            }
            §§goto(addr81);
         }
         return §§pop();
      }
      
      public function §+!v§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§["8§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§["8§[0].y * param1.y);
            if(_loc6_ || this)
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
            if(_loc6_)
            {
               if(§§pop() >= this.§4C§)
               {
                  if(_loc6_)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc6_ || this)
                        {
                           loop2:
                           while(true)
                           {
                              _loc4_++;
                              addr86:
                              while(_loc7_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc7_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             addr103:
                                             §§push(Number(§§pop()));
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr162:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      addr161:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         break loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr173:
                                                            §§push(int(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               continue loop5;
                                                            }
                                                            addr173:
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                   }
                                                }
                                                addr158:
                                             }
                                             §§goto(addr162);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§["8§[_loc4_].y * param1.y);
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§goto(addr158);
                                                   }
                                                   addr157:
                                                }
                                             }
                                             addr131:
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr103);
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr86);
               }
               else
               {
                  §§push(this.§["8§[_loc4_].x * param1.x);
               }
               §§goto(addr131);
            }
            §§goto(addr173);
         }
         return this.§["8§[_loc2_];
      }
      
      private function §8!V§() : Boolean
      {
         return false;
      }
      
      private function §-q§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§["8§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_++;
                     addr79:
                     while(true)
                     {
                        this.§0!3§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
               }
               while(_loc4_ && param1)
               {
               }
               continue;
            }
            this.§["8§[_loc2_] = new b2Vec2();
            §§goto(addr79);
         }
      }
   }
}
