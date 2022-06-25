package §#!"§
{
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §]=§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §-!2§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!2§ = new b2Mat22();
         }
      }
      
      b2internal var §-a§:b2Vec2;
      
      b2internal var §`V§:Vector.<b2Vec2>;
      
      b2internal var §1g§:Vector.<b2Vec2>;
      
      b2internal var §>Q§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §32§ = §2r§;
               loop1:
               while(true)
               {
                  this.§-a§ = new b2Vec2();
                  while(true)
                  {
                     this.§`V§ = new Vector.<b2Vec2>();
                     loop3:
                     for(; _loc2_; if(!_loc1_)
                     {
                        return;
                        addr55:
                     })
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        this.§1g§ = new Vector.<b2Vec2>();
                        while(true)
                        {
                           §5!`§ = b2Settings.b2_polygonRadius;
                           continue loop1;
                           addr36:
                           if(_loc2_ || this)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public static function §<d§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§9[§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §!f§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || param1)
         {
            _loc3_.§@!G§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §=!M§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.§,=§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §%9§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:b2PolygonShape = new b2PolygonShape();
         if(_loc7_ || param3)
         {
            _loc5_.§`'§(param1,param2,param3,param4);
         }
         return _loc5_;
      }
      
      public static function §-!F§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§@l§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §1M§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(!(_loc17_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc18_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(_loc18_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(!_loc17_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc17_ && param1))
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc17_ && param1))
               {
                  §§push(_loc9_.x);
                  if(!_loc17_)
                  {
                     §§push(_loc5_);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr407:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop20:
                        while(true)
                        {
                           if(!(_loc18_ || param1))
                           {
                              continue loop1;
                           }
                           §§push(§§pop() - §§pop());
                           loop21:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop23:
                              while(true)
                              {
                                 _loc15_ = §§pop();
                                 addr342:
                                 while(true)
                                 {
                                    §§push(0.5);
                                    addr259:
                                    loop25:
                                    while(!_loc17_)
                                    {
                                       §§push(_loc15_);
                                       while(!_loc17_)
                                       {
                                          addr264:
                                          loop15:
                                          for(; !_loc17_; §§goto(addr264))
                                          {
                                             §§push(§§pop() - §§pop());
                                             while(_loc18_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                                break loop25;
                                             }
                                             loop12:
                                             while(_loc18_)
                                             {
                                                _loc13_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc10_.y);
                                                   addr346:
                                                   while(_loc18_ || b2PolygonShape)
                                                   {
                                                      §§push(_loc6_);
                                                      continue loop15;
                                                   }
                                                   addr374:
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                             loop7:
                                             while(_loc18_ || param1)
                                             {
                                                _loc12_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc10_.x);
                                                   addr370:
                                                   while(_loc18_)
                                                   {
                                                      §§push(_loc5_);
                                                      break loop15;
                                                   }
                                                   addr382:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      addr383:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc17_ && b2PolygonShape))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc11_ = §§pop();
                                                addr409:
                                                while(true)
                                                {
                                                   §§goto(addr382);
                                                }
                                             }
                                          }
                                          if(!(_loc17_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(!_loc17_)
                                             {
                                                if(!(_loc18_ || b2PolygonShape))
                                                {
                                                   break loop20;
                                                }
                                                §§push(Number(§§pop()));
                                                continue loop21;
                                             }
                                             continue loop23;
                                             addr272:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr374);
                                          }
                                       }
                                       continue loop20;
                                    }
                                    while(true)
                                    {
                                       _loc14_ = §§pop();
                                       addr366:
                                       while(true)
                                       {
                                          §§push(_loc11_);
                                          if(!(_loc18_ || param2))
                                          {
                                             continue loop23;
                                          }
                                          §§push(_loc14_);
                                          if(_loc18_ || b2PolygonShape)
                                          {
                                             if(_loc17_ && _loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                if(!(_loc18_ || _loc3_))
                                                {
                                                   continue loop20;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop20;
                                          }
                                       }
                                       §§goto(addr383);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr407);
                     }
                  }
                  §§goto(addr408);
               }
               §§goto(addr211);
            }
            §§goto(addr104);
         }
         if(_loc18_ || param1)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!_loc17_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!_loc17_)
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc17_ && b2PolygonShape))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §]8§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(!_loc27_)
         {
            §§push(0);
            if(!_loc27_)
            {
               §§push(int(§§pop()));
            }
            _loc4_ = §§pop();
         }
         while(true)
         {
            §§push(_loc4_);
            if(!_loc27_)
            {
               if(!(_loc27_ && param3))
               {
                  if(!_loc27_)
                  {
                     if(§§pop() >= param3)
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
                              §§push(_loc4_);
                              addr106:
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 addr107:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr108:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                    }
                                 }
                              }
                              addr126:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        while(_loc27_ && param3)
                        {
                        }
                        continue;
                     }
                     _loc5_[_loc4_] = param2[_loc4_];
                     §§goto(addr126);
                  }
                  §§goto(addr106);
               }
               §§goto(addr107);
            }
            §§goto(addr108);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(!(_loc27_ && param3))
         {
            §§push(1);
            if(!_loc27_)
            {
               §§push(int(§§pop()));
               if(!_loc27_)
               {
                  §§goto(addr151);
               }
               §§goto(addr1262);
            }
            addr151:
            _loc4_ = §§pop();
            if(!(_loc27_ && param1))
            {
               addr159:
               loop98:
               while(true)
               {
                  §§push(_loc4_);
                  addr1262:
                  while(§§pop() <= param3)
                  {
                     _loc7_ = _loc5_[int(_loc4_ - 1)];
                     if(!(_loc27_ && param1))
                     {
                        §§push(_loc5_[_loc4_].x - _loc7_.x);
                        loop8:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop9:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              loop10:
                              while(true)
                              {
                                 §§push(_loc5_[_loc4_].y - _loc7_.y);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop12:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc26_ || param1)
                                       {
                                          §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                          loop13:
                                          for(; _loc26_; while(!(_loc27_ && b2PolygonShape))
                                          {
                                             §§goto(addr373);
                                             §§push(Number(§§pop()));
                                          })
                                          {
                                             _loc10_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   addr999:
                                                   addr855:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr1000:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr1001:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc26_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   addr862:
                                                   _loc20_ = §§pop();
                                                   loop80:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      loop81:
                                                      while(true)
                                                      {
                                                         §§push(_loc19_);
                                                         loop82:
                                                         while(true)
                                                         {
                                                            addr822:
                                                            §§push(§§pop() * §§pop() + _loc9_ * _loc20_);
                                                            loop83:
                                                            while(true)
                                                            {
                                                               addr826:
                                                               addr827:
                                                               _loc21_ = §§pop();
                                                               addr827:
                                                               if(_loc26_ || b2PolygonShape)
                                                               {
                                                                  §§push(_loc11_);
                                                                  if(_loc26_ || param1)
                                                                  {
                                                                     if(_loc27_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc27_)
                                                                     {
                                                                        break loop82;
                                                                     }
                                                                     addr796:
                                                                     §§push(§§pop() * _loc19_);
                                                                     loop84:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc26_)
                                                                        {
                                                                           addr800:
                                                                           break;
                                                                        }
                                                                        §§push(_loc12_);
                                                                        if(_loc26_)
                                                                        {
                                                                           addr804:
                                                                           §§push(§§pop() + §§pop() * _loc20_);
                                                                           continue loop81;
                                                                        }
                                                                        continue loop82;
                                                                        addr747:
                                                                        if(_loc27_ && param3)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc14_ = §§pop();
                                                                        addr755:
                                                                        if(_loc26_ || param2)
                                                                        {
                                                                           if(!_loc27_)
                                                                           {
                                                                              loop92:
                                                                              while(true)
                                                                              {
                                                                                 addr704:
                                                                                 §§push(_loc21_);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    addr707:
                                                                                    if(§§pop() > _loc15_)
                                                                                    {
                                                                                       if(!(_loc26_ || param3))
                                                                                       {
                                                                                          continue loop98;
                                                                                       }
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          addr717:
                                                                                          if(!(_loc27_ && param3))
                                                                                          {
                                                                                             addr725:
                                                                                             §§push(Number(_loc21_));
                                                                                             loop95:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   addr730:
                                                                                                   _loc15_ = §§pop();
                                                                                                   loop78:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr655:
                                                                                                      loop79:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr657:
                                                                                                         §§push(_loc22_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            continue loop95;
                                                                                                         }
                                                                                                         if(_loc26_ || b2PolygonShape)
                                                                                                         {
                                                                                                            addr666:
                                                                                                            if(!(_loc27_ && param1))
                                                                                                            {
                                                                                                               addr674:
                                                                                                               if(§§pop() > _loc16_)
                                                                                                               {
                                                                                                                  addr675:
                                                                                                                  §§push(_loc22_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  if(_loc26_ || param3)
                                                                                                                  {
                                                                                                                     _loc16_ = §§pop();
                                                                                                                     addr687:
                                                                                                                     if(_loc26_ || param2)
                                                                                                                     {
                                                                                                                        if(!(_loc26_ || param2))
                                                                                                                        {
                                                                                                                           continue loop80;
                                                                                                                        }
                                                                                                                        addr638:
                                                                                                                        §§push(_loc17_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              addr645:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(!(_loc27_ && b2PolygonShape))
                                                                                                                              {
                                                                                                                                 _loc17_ = §§pop();
                                                                                                                                 addr654:
                                                                                                                                 loop44:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       addr564:
                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= param3)
                                                                                                                                          {
                                                                                                                                             loop45:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc26_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop78;
                                                                                                                                                }
                                                                                                                                                addr580:
                                                                                                                                                if(!(_loc27_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      loop46:
                                                                                                                                                      while(_loc26_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            loop47:
                                                                                                                                                            for(; _loc26_ || param1; if(_loc27_ && param3)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            },if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_ || b2PolygonShape)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr276);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr291);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr822);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr742);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                            },§§goto(addr674))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               loop48:
                                                                                                                                                               while(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     loop49:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                        loop50:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           loop51:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop52:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop53:
                                                                                                                                                                                 while(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                       loop54:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          loop55:
                                                                                                                                                                                          for(; _loc26_; if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          },§§goto(addr291),§§push(Number(§§pop())))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0.95);
                                                                                                                                                                                                   while(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      loop57:
                                                                                                                                                                                                      for(; !(_loc27_ && param3); if(_loc27_ && param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      },if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr251);
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr822);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr804);
                                                                                                                                                                                                      },§§goto(addr804))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         loop58:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_ && param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop59:
                                                                                                                                                                                                               for(; !(_loc27_ && param1); if(_loc26_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop54;
                                                                                                                                                                                                               })
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop61:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                                                                        if(!(_loc26_ || param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop98;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1.R);
                                                                                                                                                                                                                           loop62:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().col1);
                                                                                                                                                                                                                              loop63:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 loop64:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                    if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop98;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(param1.R);
                                                                                                                                                                                                                                       loop65:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().col1);
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop64;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          loop66:
                                                                                                                                                                                                                                          while(!(_loc27_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.R);
                                                                                                                                                                                                                                             loop67:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                                                                                addr402:
                                                                                                                                                                                                                                                if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr409:
                                                                                                                                                                                                                                                §§push(§§pop().col2);
                                                                                                                                                                                                                                                if(_loc26_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                   if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         addr451:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1.R);
                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr402);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1049:
                                                                                                                                                                                                                                                               _loc25_ = §§pop();
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1241:
                                                                                                                                                                                                                                                                  param1.§>r§.x = _loc7_.x + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                                                                  addr1242:
                                                                                                                                                                                                                                                                  addr1219:
                                                                                                                                                                                                                                                                  addr1240:
                                                                                                                                                                                                                                                                  addr1223:
                                                                                                                                                                                                                                                                  addr1238:
                                                                                                                                                                                                                                                                  addr1236:
                                                                                                                                                                                                                                                                  addr1237:
                                                                                                                                                                                                                                                                  addr1239:
                                                                                                                                                                                                                                                                  addr1222:
                                                                                                                                                                                                                                                                  addr1224:
                                                                                                                                                                                                                                                                  addr1221:
                                                                                                                                                                                                                                                                  §§push(param1.§>r§);
                                                                                                                                                                                                                                                                  if(_loc26_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc7_.y);
                                                                                                                                                                                                                                                                     if(_loc26_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc25_.col1);
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc25_.col2);
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1191:
                                                                                                                                                                                                                                                                                                         §§push(_loc24_);
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1195:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1203:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1211:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1113:
                                                                                                                                                                                                                                                                                                                     addr1122:
                                                                                                                                                                                                                                                                                                                     addr1117:
                                                                                                                                                                                                                                                                                                                     addr1123:
                                                                                                                                                                                                                                                                                                                     addr1116:
                                                                                                                                                                                                                                                                                                                     §§push(param1.§&!I§);
                                                                                                                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1121:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - _loc13_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().x = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                     addr1214:
                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(param1.§&!I§);
                                                                                                                                                                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                    if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                       if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1093:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1101:
                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1111:
                                                                                                                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1113);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1243:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                   if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break loop44;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   _loc4_ = int(§§pop());
                                                                                                                                                                                                                                                                                                                                                   continue loop98;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1214);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1113);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1121);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1093);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1117);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1101);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1116);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1242);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1219);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1240);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1223);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1238);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1195);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1236);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1203);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1237);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1239);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1191);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1222);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1224);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1203);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1221);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1241);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1211);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1217:
                                                                                                                                                                                                                                                                  §§goto(addr1217);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1111);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr450:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                            addr323:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0.5);
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop81;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop61;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                                                                      addr385:
                                                                                                                                                                                                                                                      if(_loc27_ && b2PolygonShape)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(0.5);
                                                                                                                                                                                                                                                         if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr291:
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                                                                        if(_loc27_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop98;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr385);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                                                                        addr978:
                                                                                                                                                                                                                                                                        while(_loc26_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           break loop84;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr999);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr977:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr813:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc22_ = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr767:
                                                                                                                                                                                                                                                                              if(_loc21_ < _loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr773:
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                          loop88:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr732:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr734:
                                                                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                                                                if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr742:
                                                                                                                                                                                                                                                                                                   if(§§pop() < _loc14_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(_loc22_));
                                                                                                                                                                                                                                                                                                         break loop48;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                                                                                                                      addr743:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop92;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                loop30:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                   loop31:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                                                                                                                      addr946:
                                                                                                                                                                                                                                                                                                      addr957:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(Number.MAX_VALUE));
                                                                                                                                                                                                                                                                                                               addr932:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                  addr933:
                                                                                                                                                                                                                                                                                                                  while(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                        loop37:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(-Number.MAX_VALUE);
                                                                                                                                                                                                                                                                                                                                 addr898:
                                                                                                                                                                                                                                                                                                                                 while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    break loop79;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                                                                                                                                 §§goto(addr580);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                 addr972:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    addr973:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       break loop64;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr971:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop9;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr954:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                         addr848:
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr855);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                                                                         §§goto(addr946);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr972);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop88;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1001);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr781:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             break loop82;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr874:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                    addr888:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                          break loop83;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       §§goto(addr564);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1111);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr909:
                                                                                                                                                                                                                                                                                 addr769:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr732);
                                                                                                                                                                                                                                                                              §§goto(addr717);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr816:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr813:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr973);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                                                                               addr373:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop98;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop53;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr251:
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop47;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc26_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr361:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr822);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr978);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr767);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr773);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr704);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr451);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop14;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr450);
                                                                                                                                                                                                                                                   §§goto(addr409);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr977);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr687);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr957);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr827);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop44;
                                                                                                                                                                                                                     addr276:
                                                                                                                                                                                                                     if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr755);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1243);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr804);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr826);
                                                                                                                                                                                                §§goto(addr827);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr734);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr725);
                                                                                                                                                                                          if(_loc27_ && b2PolygonShape)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr323);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.R);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1049);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr675);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1000);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr675);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr747);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr800);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr822);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr657);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr954);
                                                                                                                                                }
                                                                                                                                                §§goto(addr926);
                                                                                                                                             }
                                                                                                                                             continue loop78;
                                                                                                                                          }
                                                                                                                                          §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                          §§goto(addr874);
                                                                                                                                       }
                                                                                                                                       §§goto(addr888);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr1251:
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1111);
                                                                                                                                 }
                                                                                                                                 addr560:
                                                                                                                              }
                                                                                                                              §§goto(addr1111);
                                                                                                                           }
                                                                                                                           §§goto(addr1251);
                                                                                                                        }
                                                                                                                        §§goto(addr645);
                                                                                                                     }
                                                                                                                     §§goto(addr743);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§goto(addr848);
                                                                                                                     }
                                                                                                                     §§goto(addr898);
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                                  addr846:
                                                                                                               }
                                                                                                               §§goto(addr638);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(!_loc27_)
                                                                                                         {
                                                                                                            §§goto(addr846);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr915);
                                                                                                      }
                                                                                                      addr987:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            _loc16_ = §§pop();
                                                                                                            §§goto(addr909);
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr666);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc9_ = §§pop();
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr772);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr816);
                                                                                       }
                                                                                       §§goto(addr781);
                                                                                    }
                                                                                    §§goto(addr655);
                                                                                 }
                                                                                 §§goto(addr1001);
                                                                              }
                                                                           }
                                                                           §§goto(addr933);
                                                                        }
                                                                        §§goto(addr769);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr987);
                                                                     }
                                                                  }
                                                                  §§goto(addr813);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr560);
                                                               §§goto(addr827);
                                                            }
                                                         }
                                                         while(_loc26_ || param1)
                                                         {
                                                            _loc19_ = §§pop();
                                                            if(_loc27_)
                                                            {
                                                               continue loop98;
                                                            }
                                                            §§goto(addr843);
                                                            §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                         }
                                                         §§goto(addr932);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop11;
                                       }
                                       continue loop98;
                                    }
                                    continue loop98;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr1002);
                     continue loop98;
                  }
               }
            }
            return;
         }
         §§goto(addr159);
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
         var _loc3_:* = 0;
         if(_loc4_ || _loc2_)
         {
            super.Set(param1);
            if(!_loc5_)
            {
               §§goto(addr34);
            }
            §§goto(addr39);
         }
         addr34:
         if(param1 is b2PolygonShape)
         {
            addr39:
            _loc2_ = param1 as b2PolygonShape;
            if(!_loc5_)
            {
               this.§-a§.SetV(_loc2_.§-a§);
               do
               {
                  this.§>Q§ = _loc2_.§>Q§;
                  do
                  {
                     this.§0!,§(this.§>Q§);
                     do
                     {
                        §§push(0);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(int(§§pop()));
                        }
                        _loc3_ = §§pop();
                     }
                     while(!(_loc4_ || param1));
                     
                  }
                  while(!_loc4_);
                  
               }
               while(_loc5_ && _loc2_);
               
            }
            loop3:
            while(true)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() < this.§>Q§)
                  {
                     this.§`V§[_loc3_].SetV(_loc2_.§`V§[_loc3_]);
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           this.§1g§[_loc3_].SetV(_loc2_.§1g§[_loc3_]);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(_loc3_);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(§§pop() + 1);
                              if(!(_loc4_ || this))
                              {
                                 break;
                              }
                              §§push(int(§§pop()));
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        continue;
                     }
                  }
               }
            }
         }
      }
      
      public function §9[§(param1:Array, param2:Number = 0) : void
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
         if(!(_loc8_ && param1))
         {
            this.§@!G§(_loc3_,param2);
         }
      }
      
      public function §@!G§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc7_ || _loc3_)
         {
            §§push(param2);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr287:
                     while(true)
                     {
                        param2 = §§pop();
                        addr288:
                        while(true)
                        {
                        }
                     }
                     addr252:
                     if(_loc8_ && this)
                     {
                        continue;
                     }
                     §§push(0);
                     if(!(_loc8_ && param1))
                     {
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                     if(!(_loc8_ && this))
                     {
                        if(_loc7_)
                        {
                           if(!(_loc7_ || param2))
                           {
                              §§goto(addr288);
                           }
                           loop7:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop8:
                              while(true)
                              {
                                 §§push(this.§>Q§);
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       this.§`V§[_loc3_].SetV(param1[_loc3_]);
                                       if(_loc7_)
                                       {
                                          §§goto(addr191);
                                          §§push(_loc3_);
                                       }
                                       break;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop12:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc7_)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(this.§>Q§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr380:
                                                                  this.§-a§ = §1M§(this.§`V§,this.§>Q§);
                                                                  break loop9;
                                                               }
                                                               break loop9;
                                                            }
                                                            §§push(_loc3_);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ && this)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§push(1);
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              if(§§pop() < this.§>Q§)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(_loc8_ && _loc3_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             addr93:
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                break loop18;
                                                                                             }
                                                                                             addr96:
                                                                                             §§push(int(§§pop() + §§pop()));
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr113:
                                                                                             if(_loc8_ && _loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             §§push(int(§§pop()));
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr123:
                                                                                             if(_loc8_ && param1)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                if(!(_loc7_ || _loc3_))
                                                                                                {
                                                                                                   break loop17;
                                                                                                }
                                                                                                if(!(_loc7_ || _loc3_))
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                _loc6_ = b2Math.§;v§(this.§`V§[_loc5_],this.§`V§[_loc4_]);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   b2Settings.b2Assert(_loc6_.§+!I§() > Number.MIN_VALUE);
                                                                                                   this.§1g§[_loc3_].SetV(b2Math.§#!%§(_loc6_,1));
                                                                                                   addr330:
                                                                                                   this.§1g§[_loc3_].Normalize();
                                                                                                   addr362:
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            addr317:
                                                                                                            §§push(int(§§pop()));
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr328:
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               §§goto(addr330);
                                                                                                            }
                                                                                                            §§goto(addr362);
                                                                                                         }
                                                                                                         §§goto(addr330);
                                                                                                      }
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   addr373:
                                                                                                   §§goto(addr373);
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr191:
                                                                                             §§push(§§pop() + 1);
                                                                                          }
                                                                                          §§push(int(§§pop()));
                                                                                          break loop15;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§goto(addr123);
                                                                                 }
                                                                                 break loop17;
                                                                              }
                                                                              §§push(0);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§goto(addr113);
                                                                                 }
                                                                                 break loop15;
                                                                              }
                                                                              continue loop15;
                                                                              §§goto(addr113);
                                                                           }
                                                                           §§goto(addr96);
                                                                        }
                                                                        §§goto(addr93);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr120);
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(!(_loc8_ && this))
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr380);
                                          }
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 return;
                              }
                           }
                           addr244:
                        }
                        while(true)
                        {
                           this.§>Q§ = param2;
                           addr264:
                           while(true)
                           {
                              this.§0!,§(param2);
                           }
                           §§goto(addr244);
                        }
                        addr273:
                     }
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr252);
                        }
                        else
                        {
                           §§goto(addr264);
                        }
                     }
                     addr259:
                     §§goto(addr288);
                  }
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  §§goto(addr273);
                  §§goto(addr288);
               }
            }
            §§goto(addr287);
         }
         §§goto(addr264);
      }
      
      public function §,=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§>Q§ = 4;
         }
         while(true)
         {
            this.§0!,§(4);
            while(true)
            {
               this.§`V§[0].Set(-param1,-param2);
               while(true)
               {
                  this.§`V§[1].Set(param1,-param2);
                  loop3:
                  while(true)
                  {
                     this.§`V§[2].Set(param1,param2);
                     addr139:
                     while(true)
                     {
                        this.§`V§[3].Set(-param1,param2);
                        continue loop3;
                     }
                  }
               }
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §`'§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§>Q§ = 4;
            while(true)
            {
               this.§0!,§(4);
               while(!(_loc8_ && this))
               {
                  this.§`V§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§`V§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§`V§[2].Set(param1,param2);
                        loop4:
                        while(true)
                        {
                           this.§`V§[3].Set(-param1,param2);
                           loop5:
                           while(true)
                           {
                              this.§1g§[0].Set(0,-1);
                              while(true)
                              {
                                 this.§1g§[1].Set(1,0);
                                 while(!(_loc8_ && param2))
                                 {
                                    continue loop4;
                                    loop10:
                                    while(!(_loc8_ && param1))
                                    {
                                       this.§-a§ = param3;
                                       if(_loc7_ || param3)
                                       {
                                          addr30:
                                          if(_loc7_ || param1)
                                          {
                                             continue loop3;
                                          }
                                          addr79:
                                          while(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                this.§1g§[3].Set(-1,0);
                                                continue loop10;
                                             }
                                             §§goto(addr30);
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr53);
                     }
                     var _loc5_:b2Transform = new b2Transform();
                     if(!_loc8_)
                     {
                        _loc5_.position = param3;
                        if(!(_loc8_ && this))
                        {
                           addr210:
                           _loc5_.R.Set(param4);
                        }
                        §§push(0);
                        if(!(_loc8_ && param2))
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        while(true)
                        {
                           §§push(_loc6_);
                           if(!(_loc8_ && param3))
                           {
                              if(§§pop() >= this.§>Q§)
                              {
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc8_ && this))
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       break;
                                    }
                                    this.§1g§[_loc6_] = b2Math.§2!b§(_loc5_.R,this.§1g§[_loc6_]);
                                    addr316:
                                 }
                                 §§push(_loc6_);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc8_ && this))
                                    {
                                       addr275:
                                       _loc6_ = int(§§pop());
                                       continue;
                                    }
                                 }
                                 §§goto(addr275);
                              }
                              else
                              {
                                 this.§`V§[_loc6_] = b2Math.§?!L§(_loc5_,this.§`V§[_loc6_]);
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr275);
                        }
                        return;
                     }
                     §§goto(addr210);
                  }
                  if(_loc8_ && param2)
                  {
                     continue;
                  }
                  this.§1g§[2].Set(0,1);
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §@l§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§>Q§ = 2;
            while(true)
            {
               this.§0!,§(2);
               loop1:
               while(true)
               {
                  this.§`V§[0].SetV(param1);
                  loop2:
                  while(true)
                  {
                     this.§`V§[1].SetV(param2);
                     while(_loc4_)
                     {
                        §§push(this.§-a§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr196:
                           while(true)
                           {
                              §§push(param1.x);
                              addr198:
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr200:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr201:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr212:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(!(_loc3_ && param2))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               this.§1g§[1].x = -this.§1g§[0].x;
               while(true)
               {
                  if(_loc4_)
                  {
                     addr58:
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc3_ && param1)
                        {
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(_loc4_ || param2)
                        {
                           this.§1g§[0].Normalize();
                           §§goto(addr80);
                        }
                        break;
                        §§goto(addr58);
                     }
                     while(true)
                     {
                        this.§1g§[0] = b2Math.§#!%§(b2Math.§;v§(param2,param1),1);
                        §§goto(addr126);
                     }
                     addr126:
                     addr191:
                  }
                  §§goto(addr80);
               }
               while(true)
               {
                  §§push(this.§-a§);
                  if(!(_loc3_ && this))
                  {
                     §§push(0.5);
                     if(_loc4_ || param1)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(param1.y);
                           if(_loc4_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§push(param2.y);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr180:
                                    §§push(§§pop() + §§pop());
                                    if(_loc4_ || param1)
                                    {
                                       addr188:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§pop().y = §§pop();
                                          §§goto(addr191);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr195);
               }
               addr213:
            }
         }
         §§goto(addr213);
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
            if(!(_loc12_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(!(_loc12_ && param1))
         {
            §§push(§§pop() - param1.position.y);
            if(_loc11_ || param2)
            {
               addr62:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_);
            if(_loc11_ || this)
            {
               §§push(_loc4_.col1.x);
               if(_loc11_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc12_ && param2))
                  {
                     addr90:
                     §§push(_loc6_);
                     if(_loc12_)
                     {
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr105);
               }
               addr97:
               §§push(§§pop() + §§pop() * _loc4_.col1.y);
               if(!(_loc12_ && _loc3_))
               {
                  addr105:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc11_ || this)
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc11_ || param1)
                     {
                        §§push(_loc6_);
                        if(!(_loc12_ && param1))
                        {
                           addr136:
                           §§push(§§pop() * _loc4_.col2.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc11_ || this)
                        {
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr136);
               }
               addr159:
               var _loc8_:Number = §§pop();
               §§push(0);
               if(!(_loc12_ && this))
               {
                  §§push(int(§§pop()));
               }
               var _loc9_:* = §§pop();
               loop0:
               while(_loc9_ < this.§>Q§)
               {
                  _loc3_ = this.§`V§[_loc9_];
                  if(!_loc12_)
                  {
                     §§push(_loc7_);
                     if(!(_loc12_ && param2))
                     {
                        §§push(_loc3_.x);
                        if(!(_loc12_ && _loc3_))
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc12_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc11_)
                              {
                              }
                              §§goto(addr225);
                           }
                           _loc5_ = §§pop();
                           if(!(_loc12_ && param1))
                           {
                              addr216:
                              §§push(_loc8_);
                              if(!_loc12_)
                              {
                                 addr221:
                                 §§push(§§pop() - _loc3_.y);
                                 if(_loc12_)
                                 {
                                 }
                                 §§goto(addr225);
                              }
                              addr225:
                              _loc6_ = §§pop();
                              _loc3_ = this.§1g§[_loc9_];
                              if(_loc11_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc11_ || param2)
                                 {
                                    §§push(_loc5_);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc12_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             addr311:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          addr305:
                                       }
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             §§goto(addr314);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr305);
                              }
                              addr314:
                              loop6:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc10_);
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    if(_loc12_ && this)
                                    {
                                       continue loop2;
                                    }
                                    §§push(0);
                                    if(!_loc12_)
                                    {
                                       if(_loc11_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             do
                                             {
                                                §§push(_loc9_);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc12_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                             }
                                             while(_loc9_ = §§pop(), !(_loc11_ || this));
                                             
                                             if(_loc11_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          if(!(_loc12_ && param1))
                                          {
                                             break loop6;
                                          }
                                          continue loop6;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr311);
                                 }
                                 continue loop3;
                              }
                              return false;
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr216);
               }
               return true;
            }
            §§goto(addr90);
         }
         §§goto(addr62);
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
         if(!(_loc21_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§>x§);
         if(_loc20_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc20_)
         {
            §§push(param2.p1);
            if(_loc20_ || param2)
            {
               §§push(§§pop().x);
               if(_loc20_)
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
                           §§push(Number(§§pop()));
                           if(!(_loc21_ && this))
                           {
                              _loc6_ = §§pop();
                              if(_loc20_ || param1)
                              {
                                 addr93:
                                 §§push(param2.p1.y);
                                 if(!_loc21_)
                                 {
                                    addr99:
                                    §§push(§§pop() - param3.position.y);
                                    if(!_loc21_)
                                    {
                                       addr102:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc7_ = §§pop();
                                 }
                                 §§goto(addr102);
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!(_loc21_ && param2))
                              {
                                 §§push(_loc8_.col1.x);
                                 if(!(_loc21_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc20_)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc21_ && param1))
                                       {
                                          addr137:
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc20_ || param2)
                                       {
                                       }
                                       addr150:
                                       var _loc10_:* = §§pop();
                                       §§push(_loc6_);
                                       if(!_loc21_)
                                       {
                                          §§push(_loc8_.col2.x);
                                          if(_loc20_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc20_)
                                             {
                                                §§push(_loc7_);
                                                if(_loc20_)
                                                {
                                                   addr170:
                                                   §§push(§§pop() * _loc8_.col2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc21_)
                                                {
                                                   addr177:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                if(!_loc21_)
                                                {
                                                   §§push(param2.p2);
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc20_)
                                                      {
                                                         §§push(param3.position);
                                                         if(!_loc21_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc20_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc20_)
                                                                  {
                                                                  }
                                                                  addr226:
                                                                  _loc7_ = §§pop();
                                                                  _loc8_ = param3.R;
                                                                  §§push(_loc6_);
                                                                  if(!(_loc21_ && param3))
                                                                  {
                                                                     §§push(_loc8_.col1.x);
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc21_ && param3))
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!(_loc21_ && param1))
                                                                           {
                                                                              addr260:
                                                                              §§push(§§pop() * _loc8_.col1.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc21_)
                                                                           {
                                                                              addr267:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(_loc20_ || param3)
                                                                        {
                                                                           §§push(_loc8_.col2.x);
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc21_)
                                                                              {
                                                                                 addr285:
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc21_ && param1))
                                                                                 {
                                                                                    addr297:
                                                                                    §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                    if(_loc20_ || param2)
                                                                                    {
                                                                                       addr305:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          addr314:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(!(_loc21_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() - _loc11_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr328:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc15_:* = §§pop();
                                                                                          §§push(-1);
                                                                                          if(!(_loc21_ && this))
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          var _loc16_:* = §§pop();
                                                                                          §§push(0);
                                                                                          if(!(_loc21_ && param1))
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          var _loc17_:* = §§pop();
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                §§push(this.§>Q§);
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      addr931:
                                                                                                      if(!(_loc21_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         break;
                                                                                                      }
                                                                                                      param1.fraction = _loc4_;
                                                                                                      _loc8_ = param3.R;
                                                                                                      _loc9_ = this.§1g§[_loc16_];
                                                                                                      if(!(_loc21_ && param3))
                                                                                                      {
                                                                                                         §§push(param1.normal);
                                                                                                         loop61:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.col1);
                                                                                                            addr1064:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr1065:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_.x);
                                                                                                                  if(_loc20_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        addr1077:
                                                                                                                        addr1039:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                        }
                                                                                                                        addr1039:
                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              return true;
                                                                                                                              addr1059:
                                                                                                                           }
                                                                                                                           continue loop61;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1075:
                                                                                                                  }
                                                                                                                  addr1078:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     addr1080:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1081:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr1082:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              continue loop61;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1059);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc9_ = this.§`V§[_loc17_];
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                         §§push(_loc9_.x);
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc20_ || param2)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(!(_loc21_ && this))
                                                                                                                     {
                                                                                                                        addr391:
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(!(_loc21_ && param1))
                                                                                                                        {
                                                                                                                           addr401:
                                                                                                                           §§push(§§pop() - _loc11_);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              addr405:
                                                                                                                              _loc7_ = Number(§§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr405);
                                                                                                                     }
                                                                                                                     _loc9_ = this.§1g§[_loc17_];
                                                                                                                     if(!(_loc21_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc9_.x);
                                                                                                                        loop1:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           loop2:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop3:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    loop5:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop6:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop7:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop8:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                loop9:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.x);
                                                                                                                                                   loop10:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      loop11:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.y);
                                                                                                                                                            loop12:
                                                                                                                                                            while(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr883:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr884:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               loop21:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc20_ || param2))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                  loop22:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        loop23:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           loop24:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop54:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr843:
                                                                                                                                                                                    loop56:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                       if(!(_loc21_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                          loop57:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                             loop58:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc21_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                loop59:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   loop60:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      addr776:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop26:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                               loop27:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  loop28:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc20_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_ && param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop29:
                                                                                                                                                                                                                        while(_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr720:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop30:
                                                                                                                                                                                                                              for(; _loc20_ || param3; while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc20_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr626);
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                                 §§goto(addr545);
                                                                                                                                                                                                                              },§§goto(addr863))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 loop31:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc21_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                             if(_loc20_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc20_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr648:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc21_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                  addr790:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop10;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr884);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr788:
                                                                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                               if(_loc21_ && this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr790);
                                                                                                                                                                                                                                                                  addr632:
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  if(_loc20_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                                                                            addr648:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr882);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop19:
                                                                                                                                                                                                                                                      while(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                                                                               loop42:
                                                                                                                                                                                                                                                               while(_loc20_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop48:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr468:
                                                                                                                                                                                                                                                                           loop39:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                              if(!(_loc20_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop27;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc21_ && param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_ && param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop56;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop48;
                                                                                                                                                                                                                                                                                 addr805:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr484:
                                                                                                                                                                                                                                                                              if(_loc21_ && param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(_loc20_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                                                                                                                    §§goto(addr484);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop7;
                                                                                                                                                                                                                                                                                 addr820:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                                                                              if(_loc20_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc20_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_ && param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                                          if(_loc20_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr440:
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr520:
                                                                                                                                                                                                                                                                                                      if(!(_loc20_ || param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         return false;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr863:
                                                                                                                                                                                                                                                                                                      addr862:
                                                                                                                                                                                                                                                                                                      addr537:
                                                                                                                                                                                                                                                                                                      §§push(false);
                                                                                                                                                                                                                                                                                                      if(!(_loc21_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr545:
                                                                                                                                                                                                                                                                                                         if(_loc20_ || param3)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop60;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop30;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr626:
                                                                                                                                                                                                                                                                                                      while(_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop39;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr537);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr452:
                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop0;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop31;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr632);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr630:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr674:
                                                                                                                                                                                                                                                                                                      while(_loc20_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                                                                                                                         §§goto(addr452);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr674:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop17:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                                                                                                                      addr846:
                                                                                                                                                                                                                                                                                                      addr885:
                                                                                                                                                                                                                                                                                                      while(_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(_loc20_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr630);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc21_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop39;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr745:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                §§goto(addr745);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr744:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr440);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr744);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr743:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr520);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr648);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr743);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr862);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop8;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr852:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr820);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop59;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr648);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr852);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                             if(!(_loc21_ && param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr788);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr846);
                                                                                                                                                                                                                                                addr786:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr778:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr790);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr813);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop59;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop26;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr628);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop22;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr861);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr883);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr778);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr786);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr842:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr776);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr842);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr885);
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
                                                                                                                     §§goto(addr843);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr405);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr401);
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                }
                                                                                                addr923:
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   return false;
                                                                                                }
                                                                                                if(_loc20_ || this)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr931);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr923);
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               _loc6_ = §§pop();
                                                               if(_loc20_ || param1)
                                                               {
                                                                  addr211:
                                                                  addr209:
                                                                  §§push(param2.p2.y);
                                                                  if(!(_loc21_ && param2))
                                                                  {
                                                                     addr222:
                                                                     §§push(§§pop() - param3.position.y);
                                                                     if(!_loc20_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr226);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr150);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr150);
                           }
                        }
                        §§goto(addr102);
                     }
                  }
               }
               §§goto(addr99);
            }
         }
         §§goto(addr93);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§`V§[0];
         §§push(param2.position.x);
         if(!_loc12_)
         {
            §§push(_loc3_.col1.x);
            if(_loc13_)
            {
               §§push(_loc4_.x);
               if(!(_loc12_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc12_)
                  {
                     addr53:
                     §§push(_loc3_.col2.x);
                     if(_loc13_)
                     {
                        addr58:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc12_)
                  {
                     addr66:
                     var _loc5_:Number = §§pop();
                     §§push(param2.position.y);
                     if(!_loc12_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc12_)
                        {
                           §§push(_loc4_.x);
                           if(_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc12_ && param1))
                              {
                                 addr89:
                                 §§push(_loc3_.col2.y);
                                 if(!_loc12_)
                                 {
                                    addr94:
                                    §§push(§§pop() * _loc4_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_ || param1)
                              {
                                 addr107:
                                 var _loc6_:Number = §§pop();
                                 §§push(_loc5_);
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(_loc6_);
                                 if(_loc13_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 §§push(1);
                                 if(_loc13_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc9_:* = §§pop();
                                 while(_loc9_ < this.§>Q§)
                                 {
                                    _loc4_ = this.§`V§[_loc9_];
                                    if(_loc13_)
                                    {
                                       §§push(param2.position);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr501:
                                          while(true)
                                          {
                                             §§push(_loc3_.col1);
                                             addr503:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr504:
                                                while(true)
                                                {
                                                   §§push(_loc4_.x);
                                                   addr506:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr507:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr509:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr510:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.y);
                                                               addr512:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr513:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr514:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr515:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr516:
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
                                    §§goto(addr261);
                                 }
                                 if(_loc13_ || param2)
                                 {
                                    §§push(param1.§^"§);
                                    if(_loc13_)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          §§push(§§pop() - §5!`§);
                                          if(_loc13_ || param1)
                                          {
                                             addr551:
                                             §§pop().x = §§pop();
                                             if(_loc13_ || _loc3_)
                                             {
                                                addr612:
                                                §§push(param1.§^"§);
                                                §§push(_loc6_);
                                                if(!_loc12_)
                                                {
                                                   addr615:
                                                   §§push(§§pop() - §5!`§);
                                                }
                                                §§pop().y = §§pop();
                                                while(true)
                                                {
                                                   §§push(param1.§=!O§);
                                                   loop53:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr605:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop() + §5!`§;
                                                         continue loop53;
                                                      }
                                                   }
                                                   if(_loc13_ || param1)
                                                   {
                                                      return;
                                                   }
                                                }
                                                addr619:
                                             }
                                             §§goto(addr619);
                                          }
                                          §§goto(addr615);
                                       }
                                       §§goto(addr551);
                                    }
                                 }
                                 §§goto(addr612);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr66);
               }
               §§goto(addr58);
            }
            §§goto(addr53);
         }
         §§goto(addr66);
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
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:Number = NaN;
         if(_loc27_)
         {
            if(this.§>Q§ != 2)
            {
               §§push(0);
               if(!(_loc28_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!(_loc28_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(_loc27_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc27_ || _loc3_)
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
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(0);
               if(_loc27_ || param1)
               {
                  §§push(int(§§pop()));
               }
               var _loc10_:* = §§pop();
               while(_loc10_ < this.§>Q§)
               {
                  _loc11_ = this.§`V§[_loc10_];
                  if(_loc27_ || this)
                  {
                     _loc12_ = _loc10_ + 1 < this.§>Q§ ? this.§`V§[int(_loc10_ + 1)] : this.§`V§[0];
                     if(!(_loc28_ && _loc3_))
                     {
                        §§push(_loc11_.x);
                        while(true)
                        {
                           §§push(_loc7_);
                           addr1130:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr1131:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr1132:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                 }
                              }
                           }
                        }
                        addr1129:
                     }
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
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc14_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc12_.x);
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc27_)
                                          {
                                             §§push(_loc7_);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
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
                                                            while(_loc27_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               loop18:
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
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc16_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc15_);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   loop29:
                                                                                                   while(_loc27_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      loop30:
                                                                                                      for(; _loc27_; if(_loc28_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },_loc6_ = §§pop(),§§goto(addr493))
                                                                                                      {
                                                                                                         §§push(_loc17_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr1056:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  if(!(_loc27_ || _loc3_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr1066:
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr360:
                                                                                                            if(_loc28_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(_loc25_);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  if(!(_loc28_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!(_loc28_ && this))
                                                                                                                     {
                                                                                                                        addr386:
                                                                                                                        if(_loc27_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc26_);
                                                                                                                           if(_loc27_ || param1)
                                                                                                                           {
                                                                                                                              if(!(_loc28_ && param2))
                                                                                                                              {
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          addr415:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc28_ && this))
                                                                                                                                                {
                                                                                                                                                   addr427:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc27_ || param2))
                                                                                                                                                   {
                                                                                                                                                      continue loop12;
                                                                                                                                                   }
                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc28_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop23;
                                                                                                                                                               }
                                                                                                                                                               addr456:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr462:
                                                                                                                                                                        if(!(_loc28_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              addr471:
                                                                                                                                                                              if(!(_loc28_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop38:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                       loop40:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          loop41:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                while(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_.x);
                                                                                                                                                                                                      addr1025:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                                addr1020:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc12_.x);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr1030:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                                                                               addr1033:
                                                                                                                                                                                                               addr1083:
                                                                                                                                                                                                               loop51:
                                                                                                                                                                                                               while(_loc27_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  loop52:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                              while(!_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc11_.y);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc12_.y);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   while(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                      loop64:
                                                                                                                                                                                                                                                      for(; _loc27_; while(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr748);
                                                                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                                                                         §§goto(addr883);
                                                                                                                                                                                                                                                      })
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                         loop65:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr984:
                                                                                                                                                                                                                                                            while(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                            addr895:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc27_ || this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop65;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               while(!_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1047);
                                                                                                                                                                                                                                                                  addr864:
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(_loc28_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  loop97:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     loop98:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc28_ && _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr883:
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                              addr883:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc25_ = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                    addr512:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop97;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop98;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop64;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr895);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr919:
                                                                                                                                                                                                                                                                     while(!_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                                                                        while(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr895);
                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc27_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr801);
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr643);
                                                                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr895);
                                                                                                                                                                                                                  §§goto(addr1033);
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
                                                                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr968);
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr990);
                                                                                                                                                                                 §§goto(addr471);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop27;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr937);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr932);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr512);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr725);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr735);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr704);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr456);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1020);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1030);
                                                                                                                                                }
                                                                                                                                                §§goto(addr790);
                                                                                                                                             }
                                                                                                                                             §§goto(addr607);
                                                                                                                                          }
                                                                                                                                          §§goto(addr675);
                                                                                                                                       }
                                                                                                                                       §§goto(addr759);
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                                 §§goto(addr567);
                                                                                                                              }
                                                                                                                              §§goto(addr643);
                                                                                                                           }
                                                                                                                           §§goto(addr665);
                                                                                                                        }
                                                                                                                        §§goto(addr548);
                                                                                                                     }
                                                                                                                     §§goto(addr651);
                                                                                                                  }
                                                                                                                  §§goto(addr712);
                                                                                                               }
                                                                                                               §§goto(addr723);
                                                                                                            }
                                                                                                            §§goto(addr415);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1130);
                                                                                          }
                                                                                          §§goto(addr1132);
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
                                          else
                                          {
                                             §§goto(addr1129);
                                          }
                                          §§goto(addr1130);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr248);
               }
               if(!_loc28_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc27_ || this)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§7_§ = §§pop();
                  if(!(_loc28_ && param1))
                  {
                     §§push(_loc3_);
                     if(!(_loc28_ && this))
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1255:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1256:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                        addr1254:
                     }
                     loop137:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop138:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr1259:
                           addr1241:
                           addr1242:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!(_loc28_ && _loc3_))
                              {
                                 if(!_loc27_)
                                 {
                                    continue loop138;
                                 }
                                 if(_loc28_ && this)
                                 {
                                    continue loop137;
                                 }
                                 §§push(1);
                                 if(_loc27_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc28_ && _loc3_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr1255);
                                    }
                                    §§goto(addr1256);
                                 }
                                 else
                                 {
                                    §§goto(addr1254);
                                 }
                              }
                              break;
                           }
                           _loc4_ = §§pop();
                           while(_loc28_)
                           {
                              §§goto(addr1259);
                              §§goto(addr1241);
                           }
                        }
                     }
                     addr1159:
                  }
                  while(true)
                  {
                     param1.§>r§.Set(_loc3_,_loc4_);
                     while(_loc27_)
                     {
                        §§push(param1);
                        §§push(param2);
                        if(_loc27_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                        §§pop().§8D§ = §§pop();
                        if(_loc27_ || _loc3_)
                        {
                           return;
                        }
                     }
                     §§goto(addr1242);
                  }
               }
               §§goto(addr1159);
            }
         }
         loop139:
         while(true)
         {
            §§push(param1.§>r§);
            loop140:
            while(true)
            {
               §§push(0.5);
               loop141:
               while(true)
               {
                  §§push(§§pop() * (this.§`V§[0].x + this.§`V§[1].x));
                  loop142:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     while(true)
                     {
                        §§push(param1.§>r§);
                        if(_loc28_)
                        {
                           break;
                        }
                        §§push(0.5);
                        if(!(_loc28_ && param1))
                        {
                           if(!(_loc27_ || param1))
                           {
                              continue loop142;
                           }
                           if(_loc28_)
                           {
                              continue loop141;
                           }
                           §§push(§§pop() * (this.§`V§[0].y + this.§`V§[1].y));
                        }
                        §§pop().y = §§pop();
                        while(_loc27_ || this)
                        {
                           param1.§7_§ = 0;
                           if(!(_loc28_ && this))
                           {
                              continue loop139;
                           }
                        }
                     }
                     continue loop140;
                  }
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
         var _loc5_:b2Vec2 = b2Math.§?a§(param3.R,param1);
         §§push(param2);
         if(_loc27_)
         {
            §§push(§§pop() - b2Math.§2&§(param1,param3.position));
            if(_loc27_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            §§push(0);
            if(!(_loc28_ && param2))
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(-1);
            if(!_loc28_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            §§push(-1);
            if(_loc27_ || param3)
            {
               §§push(int(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(false);
            if(!(_loc28_ && param3))
            {
               §§push(Boolean(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc27_ || param3)
            {
               §§push(0);
               if(!_loc28_)
               {
                  §§push(int(§§pop()));
               }
               _loc12_ = §§pop();
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(_loc27_)
               {
                  §§push(this.§>Q§);
                  if(!_loc28_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc27_ || this)
                        {
                           §§push(_loc8_);
                           if(!(_loc28_ && param1))
                           {
                              addr539:
                              var _loc26_:* = §§pop();
                              if(_loc27_ || param2)
                              {
                                 §§push(0);
                                 if(!(_loc28_ && param3))
                                 {
                                    §§push(_loc26_);
                                    if(!_loc28_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc27_ || param3)
                                          {
                                             §§push(0);
                                             if(_loc28_ && param2)
                                             {
                                                addr588:
                                                addr589:
                                                if(§§pop() === _loc26_)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      addr592:
                                                      §§push(1);
                                                      if(_loc27_)
                                                      {
                                                         addr603:
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  addr392:
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        _loc24_ = new b2MassData();
                                                                        if(_loc27_)
                                                                        {
                                                                           this.ComputeMass(_loc24_,1);
                                                                           addr438:
                                                                        }
                                                                        else if(true)
                                                                        {
                                                                           addr439:
                                                                           §§push(0);
                                                                           if(_loc27_ || this)
                                                                           {
                                                                              §§goto(addr447);
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        param4.SetV(b2Math.§?!L§(param3,_loc24_.§>r§));
                                                                        if(_loc28_ && this)
                                                                        {
                                                                           §§goto(addr438);
                                                                        }
                                                                        return _loc24_.§7_§;
                                                                     }
                                                                     addr628:
                                                                     addr475:
                                                                     §§push(this.§>Q§);
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     var _loc13_:* = §§pop();
                                                                     §§push(_loc10_);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc27_ || param2)
                                                                        {
                                                                           §§push(§§pop() % this.§>Q§);
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
                                                                           addr663:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc15_:* = §§pop();
                                                                        §§push(0 - _loc7_[_loc10_]);
                                                                        if(!(_loc28_ && this))
                                                                        {
                                                                           §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr687:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           §§push(§§findproperty(b2Vec2));
                                                                           §§push(this.§`V§[_loc9_].x * (1 - _loc15_));
                                                                           if(_loc27_ || param3)
                                                                           {
                                                                              §§push(this.§`V§[_loc13_].x * _loc15_);
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 addr721:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(this.§`V§[_loc9_].y * (1 - _loc15_));
                                                                                 if(_loc27_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() + this.§`V§[_loc13_].y * _loc15_);
                                                                                 }
                                                                              }
                                                                              var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                              §§push(§§findproperty(b2Vec2));
                                                                              §§push(this.§`V§[_loc10_].x * (1 - _loc16_));
                                                                              if(!(_loc28_ && this))
                                                                              {
                                                                                 §§push(this.§`V§[_loc14_].x * _loc16_);
                                                                                 if(_loc27_ || param2)
                                                                                 {
                                                                                    addr780:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    §§push(this.§`V§[_loc10_].y * (1 - _loc16_));
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() + this.§`V§[_loc14_].y * _loc16_);
                                                                                    }
                                                                                 }
                                                                                 var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                 var _loc19_:* = Number(0);
                                                                                 var _loc20_:b2Vec2 = new b2Vec2();
                                                                                 var _loc21_:b2Vec2 = this.§`V§[_loc13_];
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc27_ || param2)
                                                                                       {
                                                                                          addr828:
                                                                                          _loc12_ = §§pop();
                                                                                          if(_loc27_ || this)
                                                                                          {
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   addr1146:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc27_ || param2)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!(_loc28_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() % this.§>Q§);
                                                                                                                  if(_loc27_ || param1)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(_loc27_ || this)
                                                                                                                     {
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        §§goto(addr1170);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1171);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  if(_loc28_ && param2)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  _loc22_ = _loc18_;
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     addr904:
                                                                                                                     §§push(0.5);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc21_.x);
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§push(_loc17_.x);
                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc22_.y);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_.y);
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc27_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             addr947:
                                                                                                                                             §§push(_loc21_.y);
                                                                                                                                             if(!(_loc28_ && param3))
                                                                                                                                             {
                                                                                                                                                addr956:
                                                                                                                                                §§push(_loc17_.y);
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!(_loc28_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr968:
                                                                                                                                                      §§push(_loc22_.x);
                                                                                                                                                      if(!(_loc28_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr977:
                                                                                                                                                         §§push(§§pop() - _loc17_.x);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr1125:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      addr1128:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                   loop19:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr1063:
                                                                                                                                                      addr1131:
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
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_.x);
                                                                                                                                                                  if(_loc27_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr1101:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc22_.x);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr1112:
                                                                                                                                                                        §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                        addr1111:
                                                                                                                                                                        continue loop19;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1111);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1101);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1111);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1112);
                                                                                                                                                      }
                                                                                                                                                      _loc21_ = _loc22_;
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   addr1130:
                                                                                                                                                }
                                                                                                                                                §§goto(addr977);
                                                                                                                                             }
                                                                                                                                             §§goto(addr968);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!(_loc28_ && param3))
                                                                                                                                             {
                                                                                                                                                addr1000:
                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                if(!(_loc28_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr1124:
                                                                                                                                                      §§goto(addr1125);
                                                                                                                                                      §§push(_loc25_);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1128);
                                                                                                                                                   addr1008:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1130);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1125);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1000);
                                                                                                                                       }
                                                                                                                                       §§goto(addr956);
                                                                                                                                    }
                                                                                                                                    §§goto(addr977);
                                                                                                                                 }
                                                                                                                                 §§goto(addr956);
                                                                                                                              }
                                                                                                                              §§goto(addr1125);
                                                                                                                           }
                                                                                                                           §§goto(addr968);
                                                                                                                        }
                                                                                                                        §§goto(addr947);
                                                                                                                     }
                                                                                                                     §§goto(addr1124);
                                                                                                                  }
                                                                                                                  §§goto(addr1008);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc22_ = this.§`V§[_loc12_];
                                                                                                               }
                                                                                                               §§goto(addr904);
                                                                                                            }
                                                                                                            addr884:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr1149:
                                                                                                         _loc20_.§%!U§(1 / _loc19_);
                                                                                                         if(_loc27_ || this)
                                                                                                         {
                                                                                                            addr1162:
                                                                                                            param4.SetV(b2Math.§?!L§(param3,_loc20_));
                                                                                                         }
                                                                                                      }
                                                                                                      addr1171:
                                                                                                      return _loc19_;
                                                                                                      addr1170:
                                                                                                      §§goto(addr1149);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1162);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc14_);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§goto(addr884);
                                                                                          }
                                                                                          §§goto(addr1146);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr828);
                                                                                 }
                                                                                 §§goto(addr1162);
                                                                              }
                                                                              §§goto(addr780);
                                                                           }
                                                                           §§goto(addr721);
                                                                        }
                                                                        §§goto(addr687);
                                                                     }
                                                                     §§goto(addr663);
                                                                  }
                                                                  §§goto(addr439);
                                                               case 1:
                                                                  addr455:
                                                                  §§push(_loc9_);
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(-1);
                                                                     if(_loc27_ || param2)
                                                                     {
                                                                        addr472:
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           §§push(this.§>Q§);
                                                                           if(_loc27_ || this)
                                                                           {
                                                                              addr616:
                                                                              §§push(1);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr514:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    addr517:
                                                                                    §§push(int(§§pop()));
                                                                                    if(_loc27_ || param3)
                                                                                    {
                                                                                       addr525:
                                                                                       _loc10_ = §§pop();
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§goto(addr528);
                                                                                       }
                                                                                       §§goto(addr612);
                                                                                    }
                                                                                    §§goto(addr475);
                                                                                 }
                                                                                 addr627:
                                                                                 §§goto(addr475);
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 addr624:
                                                                                 §§push(§§pop() % this.§>Q§);
                                                                              }
                                                                              §§goto(addr627);
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§goto(addr475);
                                                                        }
                                                                        addr612:
                                                                        §§push(_loc9_);
                                                                        if(_loc27_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr475);
                                                                        addr528:
                                                                        addr501:
                                                                        §§goto(addr475);
                                                                     }
                                                                     §§goto(addr514);
                                                                  }
                                                                  break;
                                                               default:
                                                                  §§goto(addr612);
                                                            }
                                                         }
                                                         §§goto(addr616);
                                                         §§push(1);
                                                      }
                                                   }
                                                }
                                                else if(true)
                                                {
                                                   §§goto(addr603);
                                                   §§push(2);
                                                }
                                                §§goto(addr603);
                                                if(!_loc28_)
                                                {
                                                   addr601:
                                                }
                                             }
                                             §§goto(addr603);
                                          }
                                          §§goto(addr592);
                                       }
                                       else
                                       {
                                          §§push(1);
                                          if(!_loc28_)
                                          {
                                             §§goto(addr588);
                                          }
                                       }
                                       §§goto(addr601);
                                    }
                                    §§goto(addr589);
                                 }
                                 §§goto(addr588);
                              }
                              §§goto(addr592);
                           }
                           §§goto(addr475);
                           addr389:
                        }
                        §§goto(addr612);
                     }
                     else
                     {
                        _loc7_[_loc12_] = b2Math.§2&§(_loc5_,this.§`V§[_loc12_]) - _loc6_;
                        loop1:
                        while(true)
                        {
                           §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop3:
                              while(true)
                              {
                                 _loc23_ = §§pop();
                                 if(_loc27_ || this)
                                 {
                                    §§push(_loc12_);
                                    if(_loc27_ || param1)
                                    {
                                       §§push(0);
                                       if(_loc27_ || this)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc23_);
                                                if(!_loc28_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc27_ || param2)
                                                         {
                                                            if(_loc27_ || param2)
                                                            {
                                                               §§push(!§§pop());
                                                               break loop4;
                                                            }
                                                            break;
                                                         }
                                                         addr147:
                                                         if(!(_loc28_ && param3))
                                                         {
                                                            addr154:
                                                            if(false)
                                                            {
                                                               addr156:
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc23_);
                                                                  if(!(_loc28_ && param2))
                                                                  {
                                                                     if(_loc28_)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc28_ && param3))
                                                                     {
                                                                        _loc11_ = §§pop();
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!(_loc28_ && this))
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    addr120:
                                                                                    if(!(_loc28_ && param3))
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc27_ || param1)
                                                                                       {
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             _loc12_ = §§pop();
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   §§goto(addr147);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr455);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc10_ = §§pop();
                                                                                                loop15:
                                                                                                while(_loc27_ || param3)
                                                                                                {
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr191:
                                                                                                            §§push(int(§§pop()));
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(!(_loc27_ || this))
                                                                                                                  {
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr241:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  if(!(_loc27_ || this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§goto(addr624);
                                                                                                               }
                                                                                                               §§goto(addr616);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr447);
                                                                                                      }
                                                                                                      §§goto(addr191);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(1);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                               addr328:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr495:
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  addr498:
                                                                                                                  _loc9_ = §§pop();
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§goto(addr501);
                                                                                                                  }
                                                                                                                  §§goto(addr612);
                                                                                                               }
                                                                                                               §§goto(addr475);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr514);
                                                                                                         }
                                                                                                         §§goto(addr475);
                                                                                                      }
                                                                                                      §§goto(addr616);
                                                                                                      addr318:
                                                                                                   }
                                                                                                   §§goto(addr514);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(int(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            addr278:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr212:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr120);
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr447:
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr612);
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr539);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 §§goto(addr498);
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                           §§goto(addr525);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr389);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               addr156:
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§push(_loc11_);
                                                   if(!(_loc28_ && param3))
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr392);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr212);
                                             }
                                             addr297:
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr472);
                                    }
                                    §§goto(addr539);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr612);
                  }
                  §§goto(addr472);
               }
               break;
            }
            §§push(1);
            if(!_loc28_)
            {
               §§push(§§pop() - §§pop());
               if(_loc27_ || param2)
               {
                  §§goto(addr495);
               }
               else
               {
                  §§goto(addr517);
               }
            }
            else
            {
               §§goto(addr514);
            }
            §§goto(addr514);
         }
         §§goto(addr48);
      }
      
      public function §7!U§() : int
      {
         return this.§>Q§;
      }
      
      public function §;Y§() : Vector.<b2Vec2>
      {
         return this.§`V§;
      }
      
      public function §0!K§() : Vector.<b2Vec2>
      {
         return this.§1g§;
      }
      
      public function §[-§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`V§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§`V§[0].y * param1.y);
            if(!(_loc7_ && this))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_ || _loc3_)
               {
                  if(_loc6_ || this)
                  {
                     if(!_loc7_)
                     {
                        if(§§pop() >= this.§>Q§)
                        {
                           if(!_loc6_)
                           {
                              continue;
                           }
                           if(!(_loc7_ && _loc2_))
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 addr105:
                                 §§push(_loc2_);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr171:
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc7_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                if(_loc6_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      while(true)
                                                      {
                                                      }
                                                      addr135:
                                                   }
                                                   else
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr194:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               addr138:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr192:
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      addr193:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr112:
                                                      addr116:
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr115:
                                                      _loc4_ = int(§§pop());
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr138);
                                          }
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr135);
                        }
                        else
                        {
                           §§push(this.§`V§[_loc4_].x * param1.x);
                           if(!_loc7_)
                           {
                              §§goto(addr192);
                              §§push(this.§`V§[_loc4_].y * param1.y);
                           }
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr116);
               }
               §§goto(addr105);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function §-!K§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`V§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§`V§[0].y * param1.y);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(_loc6_)
               {
                  if(§§pop() >= this.§>Q§)
                  {
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(_loc4_);
                              addr79:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc7_)
                                    {
                                       addr95:
                                       §§push(int(§§pop()));
                                       while(true)
                                       {
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(_loc4_);
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr173:
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr174:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr125:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           addr185:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`V§[_loc4_].y * param1.y);
                                                                              addr193:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr194:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr195:
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr196:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          continue loop10;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(!(_loc7_ && param1))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                                  §§goto(addr125);
                                                               }
                                                            }
                                                         }
                                                         addr172:
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                }
                                                §§goto(addr174);
                                             }
                                             continue loop0;
                                             addr103:
                                          }
                                          §§goto(addr173);
                                       }
                                       addr95:
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr172);
                              }
                           }
                        }
                     }
                     §§goto(addr103);
                  }
                  else
                  {
                     §§push(this.§`V§[_loc4_].x * param1.x);
                  }
                  §§goto(addr185);
               }
               §§goto(addr79);
            }
            §§goto(addr95);
         }
         return this.§`V§[_loc2_];
      }
      
      private function §5!h§() : Boolean
      {
         return false;
      }
      
      private function §0!,§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§`V§.length);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     this.§1g§[_loc2_] = new b2Vec2();
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc3_)
                           {
                              addr83:
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr83:
                           }
                        }
                        §§goto(addr83);
                     }
                     addr99:
                     addr108:
                  }
                  while(!(_loc3_ || _loc2_))
                  {
                     §§goto(addr99);
                     §§goto(addr83);
                  }
                  continue;
               }
               this.§`V§[_loc2_] = new b2Vec2();
               §§goto(addr108);
            }
            §§goto(addr83);
         }
      }
   }
}
