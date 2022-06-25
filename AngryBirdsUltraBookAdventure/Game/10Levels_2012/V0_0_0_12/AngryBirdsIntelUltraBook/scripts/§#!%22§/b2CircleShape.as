package §#!"§
{
   import §&L§.b2Mat22;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.b2AABB;
   import §'s§.b2RayCastInput;
   import §'s§.b2RayCastOutput;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §1!k§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§1!k§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            super();
            while(true)
            {
               §32§ = §!!W§;
               while(_loc2_ || _loc2_)
               {
                  continue loop0;
                  §5!`§ = param1;
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!_loc2_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         if(!_loc4_)
         {
            super.Set(param1);
            if(_loc3_ || param1)
            {
               §§goto(addr52);
            }
            §§goto(addr57);
         }
         addr52:
         if(param1 is b2CircleShape)
         {
            addr57:
            _loc2_ = param1 as b2CircleShape;
            if(_loc3_ || param1)
            {
               this.§1!k§.SetV(_loc2_.§1!k§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc7_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§1!k§.x);
               if(!(_loc6_ && param2))
               {
                  addr59:
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() * this.§1!k§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_ || param1)
                  {
                     addr68:
                     var _loc4_:* = Number(§§pop());
                     §§push(param1.position.y);
                     if(_loc7_ || this)
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc6_)
                        {
                           §§push(this.§1!k§.x);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 addr107:
                                 §§push(_loc3_.col2.y);
                                 if(!_loc6_)
                                 {
                                    addr112:
                                    §§push(§§pop() * this.§1!k§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && param1))
                              {
                                 addr126:
                                 var _loc5_:* = Number(§§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(param2.x);
                                    loop0:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          loop2:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop3:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(param2.y);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(_loc5_);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc7_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr208:
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc7_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(_loc4_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           addr144:
                                                                           §§push(_loc5_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() * _loc5_);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr157:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc7_ || this))
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(§5!`§ * §5!`§);
                                                                              }
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                               return §§pop() <= §§pop();
                                                               addr217:
                                                            }
                                                            break;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   §§goto(addr208);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr68);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr59);
         }
         §§goto(addr68);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc17_)
         {
            §§push(_loc4_.col1.x);
            if(_loc17_ || param1)
            {
               §§push(this.§1!k§.x);
               if(_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc16_ && this))
                  {
                     addr51:
                     §§push(_loc4_.col2.x);
                     if(_loc17_)
                     {
                        addr56:
                        §§push(§§pop() * this.§1!k§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr64:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc17_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc17_)
                     {
                        §§push(this.§1!k§.x);
                        if(!_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc17_ || param3)
                           {
                              addr89:
                              §§push(_loc4_.col2.y);
                              if(_loc17_ || param3)
                              {
                                 addr99:
                                 §§push(§§pop() * this.§1!k§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc16_)
                           {
                              addr108:
                              var _loc6_:Number = §§pop();
                              §§push(param2.p1.x);
                              if(!(_loc16_ && param3))
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc17_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              if(_loc17_)
                              {
                                 §§push(param2.p1.y);
                                 if(_loc17_ || param2)
                                 {
                                    §§push(_loc6_);
                                    if(_loc17_ || param3)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc17_ || param3)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc17_ || param1)
                                          {
                                             _loc8_ = §§pop();
                                             addr167:
                                             §§push(_loc7_);
                                             if(_loc17_ || param2)
                                             {
                                                §§push(_loc7_);
                                                if(_loc17_)
                                                {
                                                   addr178:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc17_ || param1)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc16_ && this))
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            addr224:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc17_ || param2)
                                                            {
                                                               addr211:
                                                               §§push(§5!`§ * §5!`§);
                                                            }
                                                            var _loc9_:Number = §§pop();
                                                            §§push(param2.p2.x);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               §§push(§§pop() - param2.p1.x);
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param2.p2.y);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop() - param2.p1.y);
                                                               if(_loc17_ || param3)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(_loc10_);
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc17_)
                                                                     {
                                                                        addr289:
                                                                        §§push(§§pop() * _loc11_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr295:
                                                                        var _loc12_:Number = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc17_ || param2)
                                                                           {
                                                                              addr343:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc17_ || param3)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc11_);
                                                                                 }
                                                                              }
                                                                              var _loc13_:Number = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr362:
                                                                                          §§push(§§pop() * _loc9_);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr368:
                                                                                          var _loc14_:Number = §§pop();
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(_loc14_);
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() < 0);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr386:
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc17_ || param2)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(!(_loc16_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() < Number.MIN_VALUE);
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(_loc17_ || param1)
                                                                                                                     {
                                                                                                                        addr423:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              addr426:
                                                                                                                              §§push(false);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr428:
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 addr431:
                                                                                                                                 §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr440:
                                                                                                                                    var _loc15_:* = Number(§§pop());
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
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
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      loop4:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param2.§>x§);
                                                                                                                                                               if(_loc17_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc13_);
                                                                                                                                                                  if(_loc17_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr640:
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           while(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(false);
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop11;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              if(!(_loc16_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr650:
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    §§goto(addr650);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr651:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr653:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       param1.fraction = _loc15_;
                                                                                                                                                                                       addr598:
                                                                                                                                                                                       loop15:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.normal);
                                                                                                                                                                                          loop16:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             loop17:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr564:
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(!(_loc17_ || param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr573:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr576:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr578:
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         §§push(param1.normal);
                                                                                                                                                                                                         if(_loc17_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop21:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                                                                            if(_loc17_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc16_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr564);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr573);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(param1.normal);
                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                               addr590:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr576);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr590);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr589:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr589);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc16_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           return §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        continue loop2;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr651);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr653);
                                                                                                                                                         }
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr640);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr598);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr440);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr428);
                                                                                                                     }
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr423);
                                                                                                               }
                                                                                                               §§goto(addr440);
                                                                                                            }
                                                                                                            §§goto(addr428);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr423);
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             §§goto(addr431);
                                                                                          }
                                                                                          §§goto(addr426);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr368);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_ && this)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc16_ && param2))
                                                      {
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                }
                                                §§goto(addr224);
                                             }
                                          }
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr108);
               }
               §§goto(addr56);
            }
            §§goto(addr51);
         }
         §§goto(addr64);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!_loc6_)
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || param2)
            {
               §§push(this.§1!k§.x);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr49:
                     §§push(_loc3_.col2.x);
                     if(!(_loc6_ && this))
                     {
                        addr59:
                        §§push(§§pop() * this.§1!k§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr67:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc6_ && param2))
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc6_)
                     {
                        §§push(this.§1!k§.x);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              addr107:
                              §§push(_loc3_.col2.y);
                              if(_loc7_)
                              {
                                 addr116:
                                 §§push(§§pop() + §§pop() * this.§1!k§.y);
                              }
                              §§goto(addr116);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              addr120:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && param1))
                           {
                              §§push(param1.§^"§);
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() - §5!`§);
                              }
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() - §5!`§);
                              }
                              §§pop().Set(§§pop(),§§pop());
                              do
                              {
                                 param1.§=!O§.Set(_loc4_ + §5!`§,_loc5_ + §5!`§);
                              }
                              while(_loc6_);
                              
                           }
                           return;
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr120);
               }
               §§goto(addr59);
            }
            §§goto(addr49);
         }
         §§goto(addr67);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            §§push(param2);
            if(_loc3_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() * §5!`§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * §5!`§);
                  }
               }
            }
            §§pop().§7_§ = §§pop();
            while(true)
            {
               param1.§>r§.SetV(this.§1!k§);
               addr117:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               return;
               addr124:
            }
         }
         while(true)
         {
            §§push(param1);
            §§push(param1.§7_§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(0.5);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * §5!`§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() * §5!`§);
                     if(!_loc4_)
                     {
                        §§push(this.§1!k§.x);
                        if(_loc3_ || param2)
                        {
                           §§push(this.§1!k§);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop().x);
                              if(!(_loc4_ && this))
                              {
                                 addr112:
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    addr104:
                                    §§push(this.§1!k§.y);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * this.§1!k§.y);
                                    }
                                 }
                                 §§pop().§8D§ = §§pop() * (§§pop() + §§pop());
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr112);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr112);
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr124);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§?!L§(param3,this.§1!k§);
         §§push(b2Math.§2&§(param1,_loc5_));
         if(_loc11_)
         {
            §§push(§§pop() - param2);
            if(_loc11_ || this)
            {
               §§push(-§§pop());
               if(_loc11_)
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               if(_loc11_)
               {
                  §§push(_loc6_);
                  loop0:
                  while(true)
                  {
                     if(§§pop() >= -§5!`§ + Number.MIN_VALUE)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc6_);
                           while(true)
                           {
                              if(§§pop() <= §5!`§)
                              {
                                 §§push(§5!`§ * §5!`§);
                                 if(_loc11_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 break;
                              }
                              if(!_loc11_)
                              {
                                 continue loop1;
                              }
                              param4.SetV(_loc5_);
                              if(_loc11_ || param2)
                              {
                                 §§push(Math.PI * §5!`§);
                                 if(_loc12_ && this)
                                 {
                                    return §§pop();
                                 }
                                 addr83:
                                 if(_loc11_)
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                           }
                           addr139:
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc6_);
                              if(_loc11_ || this)
                              {
                                 addr162:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              if(!_loc12_)
                              {
                                 §§push(_loc7_);
                                 if(_loc11_ || param3)
                                 {
                                    §§push(§§pop() * (Math.asin(_loc6_ / §5!`§) + Math.PI / 2));
                                    if(_loc11_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc12_ && this))
                                       {
                                          §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                          if(_loc11_ || this)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc11_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc12_)
                                                {
                                                   addr218:
                                                   _loc9_ = §§pop();
                                                   addr219:
                                                   §§push(-2 / 3);
                                                   if(!(_loc12_ && this))
                                                   {
                                                      addr229:
                                                      §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                      if(!_loc12_)
                                                      {
                                                         addr240:
                                                         §§push(§§pop() / _loc9_);
                                                         if(_loc11_ || param1)
                                                         {
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                   }
                                                   addr249:
                                                   var _loc10_:* = §§pop();
                                                   if(_loc11_ || param3)
                                                   {
                                                      §§push(param4);
                                                      §§push(_loc5_.x);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(param1.x);
                                                         if(_loc11_ || param2)
                                                         {
                                                            §§push(§§pop() * _loc10_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().x = §§pop();
                                                      §§push(param4);
                                                      §§push(_loc5_.y);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(param1.y);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop() * _loc10_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                      addr313:
                                                      if(!(_loc11_ || param1))
                                                      {
                                                         §§goto(addr313);
                                                      }
                                                   }
                                                   return _loc9_;
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr249);
                                          }
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr218);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr162);
                        }
                     }
                  }
               }
               return 0;
            }
         }
         §§goto(addr45);
      }
      
      public function §@I§() : b2Vec2
      {
         return this.§1!k§;
      }
      
      public function §5!Z§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1!k§.SetV(param1);
         }
      }
      
      public function §5!L§() : Number
      {
         return §5!`§;
      }
      
      public function §;B§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §5!`§ = param1;
         }
      }
   }
}
