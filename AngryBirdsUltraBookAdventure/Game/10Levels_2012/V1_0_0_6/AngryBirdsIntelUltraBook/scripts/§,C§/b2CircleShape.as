package §,C§
{
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2AABB;
   import §8w§.b2RayCastInput;
   import §8w§.b2RayCastOutput;
   import §;%§.b2Mat22;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §^!I§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§^!I§ = new b2Vec2();
            loop0:
            do
            {
               super();
               while(true)
               {
                  §"_§ = b2internal::1";
                  while(_loc3_ || param1)
                  {
                     §?!X§ = param1;
                     if(_loc3_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         if(!_loc3_)
         {
            super.Set(param1);
            if(_loc4_)
            {
               §§goto(addr37);
            }
            §§goto(addr41);
         }
         addr37:
         if(param1 is b2CircleShape)
         {
            addr41:
            _loc2_ = param1 as b2CircleShape;
            if(_loc4_ || _loc2_)
            {
               this.§^!I§.SetV(_loc2_.§^!I§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc6_ && param2))
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§^!I§.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || _loc3_)
                  {
                     addr64:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || this)
                     {
                        addr59:
                        §§push(§§pop() * this.§^!I§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc6_ && param1))
                     {
                        addr73:
                        var _loc4_:* = Number(§§pop());
                        §§push(param1.position.y);
                        if(_loc7_ || param2)
                        {
                           §§push(_loc3_.col1.y);
                           if(!(_loc6_ && param2))
                           {
                              §§push(this.§^!I§.x);
                              if(_loc7_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc6_)
                                 {
                                    addr117:
                                    §§push(_loc3_.col2.y);
                                    if(!_loc6_)
                                    {
                                       addr122:
                                       §§push(§§pop() * this.§^!I§.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc6_)
                                 {
                                    addr130:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(param2.x);
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr234:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr235:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr236:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                             }
                                          }
                                       }
                                    }
                                    addr233:
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param2.y);
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          while(!(_loc6_ && _loc3_))
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            addr164:
                                                            §§push(_loc5_);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() * _loc5_);
                                                               if(_loc7_)
                                                               {
                                                                  addr172:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  §§push(b2internal::?!X * b2internal::?!X);
                                                               }
                                                            }
                                                            if(!(_loc7_ || _loc3_))
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               break loop4;
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr233);
                                                   }
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                 }
                                 return §§pop() <= §§pop();
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr64);
               }
               §§goto(addr59);
            }
            §§goto(addr64);
         }
         §§goto(addr73);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(!(_loc16_ && this))
         {
            §§push(_loc4_.col1.x);
            if(!(_loc16_ && param2))
            {
               §§push(this.§^!I§.x);
               if(!(_loc16_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc16_)
                  {
                     addr56:
                     §§push(_loc4_.col2.x);
                     if(!_loc16_)
                     {
                        addr61:
                        §§push(§§pop() * this.§^!I§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ || this)
                  {
                     addr75:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc17_ || param3)
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(this.§^!I§.x);
                           if(!(_loc16_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_)
                              {
                                 addr104:
                                 §§push(_loc4_.col2.y);
                                 if(_loc17_ || param1)
                                 {
                                    addr114:
                                    §§push(§§pop() * this.§^!I§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc16_)
                              {
                                 addr122:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(_loc17_ || param3)
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc17_)
                                 {
                                    addr138:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!(_loc16_ && param3))
                                 {
                                    §§push(param2.p1.y);
                                    if(!_loc16_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc17_ || param2)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc16_ && param1))
                                             {
                                                _loc8_ = §§pop();
                                                addr172:
                                                §§push(_loc7_);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc17_)
                                                   {
                                                      addr178:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         addr186:
                                                         §§push(_loc8_);
                                                         if(!_loc16_)
                                                         {
                                                            addr189:
                                                            §§push(§§pop() * _loc8_);
                                                            if(_loc17_)
                                                            {
                                                               addr193:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc16_)
                                                               {
                                                                  addr199:
                                                                  addr196:
                                                                  §§push(§§pop() - b2internal::?!X * b2internal::?!X);
                                                                  if(!_loc17_)
                                                                  {
                                                                  }
                                                                  addr203:
                                                                  var _loc9_:* = §§pop();
                                                                  §§push(param2.p2.x);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.x);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(param2.p2.y);
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.y);
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr228:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc11_:* = §§pop();
                                                                     §§push(_loc7_);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc17_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr247:
                                                                                 §§push(§§pop() * _loc11_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr252:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           §§push(_loc10_);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc16_ && param2))
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr281:
                                                                                       §§push(§§pop() * _loc11_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       addr291:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc17_ || param2)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc16_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      addr333:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§push(§§pop() < 0);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   addr355:
                                                                                                   §§pop();
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      if(_loc17_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() < Number.MIN_VALUE);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            addr371:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc16_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr380);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr381:
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     addr384:
                                                                                                                     §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        addr391:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        loop0:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc15_);
                                                                                                                           loop1:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                              loop2:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop3:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr575:
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(param2.§[n§);
                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                             {
                                                                                                                                                addr526:
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr535:
                                                                                                                                                   if(!(_loc17_ || param3))
                                                                                                                                                   {
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   loop18:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop5:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           addr567:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc15_ = §§pop();
                                                                                                                                                                              loop8:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 param1.fraction = _loc15_;
                                                                                                                                                                                 loop9:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.normal);
                                                                                                                                                                                    loop10:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       loop11:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                          loop12:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             loop13:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                loop14:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   loop15:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      §§push(param1.normal);
                                                                                                                                                                                                      while(_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         if(_loc17_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                            if(_loc17_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop14;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc16_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               if(!_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.normal);
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().Normalize();
                                                                                                                                                                                                                     if(!(_loc17_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc16_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop17;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr567:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr567);
                                                                                                                                                                        §§goto(addr526);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr567);
                                                                                                                                                               }
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc16_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  return §§pop();
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc16_ && this))
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         addr555:
                                                                                                                                                      }
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr563);
                                                                                                                                             }
                                                                                                                                             §§goto(addr535);
                                                                                                                                          }
                                                                                                                                          §§goto(addr567);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr555);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr575);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr381);
                                                                                                         }
                                                                                                         §§goto(addr380);
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                addr380:
                                                                                                return false;
                                                                                             }
                                                                                             §§goto(addr371);
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr333);
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr247);
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr203);
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr75);
               }
               §§goto(addr61);
            }
            §§goto(addr56);
         }
         §§goto(addr75);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc7_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(_loc6_ || _loc3_)
            {
               §§push(this.§^!I§.x);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr53:
                     §§push(_loc3_.col2.x);
                     if(!_loc7_)
                     {
                        addr62:
                        §§push(§§pop() + §§pop() * this.§^!I§.y);
                     }
                     §§goto(addr62);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                  }
                  §§goto(addr67);
               }
               §§goto(addr62);
            }
            §§goto(addr53);
         }
         addr67:
         var _loc4_:Number = §§pop();
         §§push(param2.position.y);
         if(!(_loc7_ && param1))
         {
            §§push(_loc3_.col1.y);
            if(!(_loc7_ && this))
            {
               §§push(this.§^!I§.x);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr106:
                     §§push(_loc3_.col2.y);
                     if(_loc6_ || param1)
                     {
                        addr116:
                        §§push(§§pop() * this.§^!I§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_ && _loc3_)
                  {
                  }
                  §§goto(addr130);
               }
               §§goto(addr116);
            }
            §§goto(addr106);
         }
         addr130:
         var _loc5_:Number = §§pop();
         if(!(_loc7_ && param2))
         {
            §§push(param1.§+!`§);
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() - b2internal::?!X);
            }
            §§push(_loc5_);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() - b2internal::?!X);
            }
            §§pop().Set(§§pop(),§§pop());
         }
         do
         {
            param1.§"W§.Set(_loc4_ + b2internal::?!X,_loc5_ + b2internal::?!X);
         }
         while(_loc7_ && param1);
         
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(param1);
            §§push(param2);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc4_)
               {
                  addr140:
                  §§push(§§pop() * b2internal::?!X);
                  if(!(_loc3_ && param2))
                  {
                     §§push(§§pop() * b2internal::?!X);
                  }
               }
               §§pop().§]J§ = §§pop();
               while(true)
               {
                  param1.center.SetV(this.§^!I§);
                  loop1:
                  for(; _loc4_; §§pop().§93§ = §§pop(),if(!(_loc4_ || param1))
                  {
                     continue;
                  },§§goto(addr106))
                  {
                     while(true)
                     {
                        §§push(param1);
                        §§push(param1.§]J§);
                        if(_loc3_ && this)
                        {
                           continue loop1;
                        }
                        §§push(0.5);
                        if(_loc4_)
                        {
                           §§push(§§pop() * b2internal::?!X);
                           if(_loc4_)
                           {
                              addr47:
                              §§push(§§pop() * b2internal::?!X);
                              if(_loc4_)
                              {
                                 §§push(this.§^!I§.x);
                                 if(_loc4_)
                                 {
                                    §§push(this.§^!I§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc4_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_ || this)
                                          {
                                             addr96:
                                             §§push(this.§^!I§.y);
                                             if(!_loc3_)
                                             {
                                                addr91:
                                                §§push(§§pop() * this.§^!I§.y);
                                             }
                                             §§push(§§pop() * (§§pop() + (§§pop() + §§pop())));
                                             continue loop1;
                                          }
                                          §§goto(addr96);
                                       }
                                       §§goto(addr91);
                                    }
                                 }
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr47);
                     }
                     return;
                  }
               }
            }
            §§goto(addr140);
         }
         §§goto(addr125);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§#!<§(param3,this.§^!I§);
         §§push(b2Math.§+!1§(param1,_loc5_));
         if(_loc11_)
         {
            §§push(param2);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc12_ && param3))
               {
                  addr52:
                  §§push(-§§pop());
                  if(_loc11_ || this)
                  {
                     addr50:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:*;
                  §§push(_loc6_ = §§pop());
                  if(!(_loc12_ && param1))
                  {
                     if(§§pop() < -b2internal::?!X + Number.MIN_VALUE)
                     {
                        if(_loc11_ || param1)
                        {
                           return 0;
                        }
                     }
                     §§push(_loc6_);
                     if(!_loc12_)
                     {
                        if(§§pop() > b2internal::?!X)
                        {
                           if(!(_loc12_ && param3))
                           {
                              param4.SetV(_loc5_);
                              if(_loc11_ || this)
                              {
                                 addr99:
                                 §§push(Math.PI * b2internal::?!X);
                                 if(!(_loc12_ && param3))
                                 {
                                    addr110:
                                    §§push(§§pop() * b2internal::?!X);
                                    if(_loc11_ || param3)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr130:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              else
                              {
                                 addr120:
                                 §§push(b2internal::?!X * b2internal::?!X);
                                 if(_loc11_ || param1)
                                 {
                                    §§goto(addr130);
                                 }
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * _loc6_);
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc8_:* = §§pop();
                              if(!(_loc12_ && param2))
                              {
                                 §§push(_loc7_);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() * (Math.asin(_loc6_ / b2internal::?!X) + Math.PI / 2));
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(_loc6_);
                                       if(_loc11_ || this)
                                       {
                                          §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                          if(_loc11_)
                                          {
                                             §§goto(addr200);
                                          }
                                          §§goto(addr231);
                                       }
                                       addr200:
                                       §§push(§§pop() + §§pop());
                                       if(_loc11_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc11_)
                                          {
                                             addr211:
                                             _loc9_ = §§pop();
                                             §§push(-2 / 3);
                                             if(!(_loc12_ && param3))
                                             {
                                                §§goto(addr222);
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    addr222:
                                    §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                    if(_loc11_)
                                    {
                                       addr231:
                                       §§push(§§pop() / _loc9_);
                                       if(_loc11_ || param2)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc10_:* = §§pop();
                                    if(!_loc12_)
                                    {
                                       §§push(param4);
                                       §§push(_loc5_.x);
                                       if(!(_loc12_ && this))
                                       {
                                          §§push(param1.x);
                                          if(!(_loc12_ && param2))
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().x = §§pop();
                                       do
                                       {
                                          §§push(param4);
                                          §§push(_loc5_.y);
                                          if(_loc11_)
                                          {
                                             §§push(param1.y);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() * _loc10_);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().y = §§pop();
                                       }
                                       while(!(_loc11_ || param3));
                                       
                                    }
                                    return _loc9_;
                                 }
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr50);
            }
         }
         §§goto(addr52);
      }
      
      public function §,!M§() : b2Vec2
      {
         return this.§^!I§;
      }
      
      public function §+L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!I§.SetV(param1);
         }
      }
      
      public function §,!I§() : Number
      {
         return b2internal::?!X;
      }
      
      public function §>w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §?!X§ = param1;
         }
      }
   }
}
