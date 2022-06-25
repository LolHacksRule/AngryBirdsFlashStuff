package §0!'§
{
   import §&!-§.b2AABB;
   import §&!-§.b2RayCastInput;
   import §&!-§.b2RayCastOutput;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §#!j§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§#!j§ = new b2Vec2();
            loop0:
            do
            {
               super();
               while(true)
               {
                  §"!1§ = b2internal::8&;
                  while(!_loc3_)
                  {
                     §6q§ = param1;
                     if(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc2_);
            
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
         if(!(_loc3_ && _loc3_))
         {
            super.Set(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr57);
            }
            §§goto(addr61);
         }
         addr57:
         if(param1 is b2CircleShape)
         {
            addr61:
            _loc2_ = param1 as b2CircleShape;
            if(_loc4_)
            {
               this.§#!j§.SetV(_loc2_.§#!j§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc7_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(!(_loc7_ && param1))
            {
               §§push(this.§#!j§.x);
               if(!(_loc7_ && this))
               {
                  addr68:
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc6_)
                     {
                        §§push(§§pop() * this.§#!j§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     addr72:
                     var _loc4_:* = Number(§§pop());
                     §§push(param1.position.y);
                     if(_loc6_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc6_)
                        {
                           §§push(this.§#!j§.x);
                           if(!_loc7_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                                 addr91:
                                 §§push(_loc3_.col2.y);
                                 if(_loc6_ || param1)
                                 {
                                    addr101:
                                    §§push(§§pop() * this.§#!j§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc6_ || param1)
                              {
                                 addr125:
                                 var _loc5_:* = Number(§§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(param2.x);
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr238:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr239:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr240:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                             }
                                          }
                                       }
                                       addr180:
                                       if(!(_loc6_ || this))
                                       {
                                          continue;
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param2.y);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(_loc5_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             addr218:
                                          }
                                          while(_loc6_ || param1)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc7_ && this)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc4_);
                                             if(_loc6_ || param2)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr161:
                                                      §§push(_loc5_);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * _loc5_);
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         addr176:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr176);
                                                }
                                                addr190:
                                                return §§pop() <= b2internal::6q * b2internal::6q;
                                             }
                                             §§goto(addr161);
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr72);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr68);
         }
         §§goto(addr72);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc16_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(_loc16_ || this)
            {
               §§push(this.§#!j§.x);
               if(_loc16_ || param3)
               {
                  addr75:
                  §§push(§§pop() * §§pop());
                  if(_loc16_ || param2)
                  {
                     §§push(_loc4_.col2.x);
                     if(!(_loc17_ && param2))
                     {
                        §§push(§§pop() * this.§#!j§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc17_ && param1))
                  {
                     addr84:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc16_)
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc16_)
                        {
                           §§push(this.§#!j§.x);
                           if(_loc16_)
                           {
                              addr118:
                              §§push(§§pop() * §§pop());
                              if(!_loc17_)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc17_ && param2))
                                 {
                                    §§push(§§pop() * this.§#!j§.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 addr121:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(!(_loc17_ && param2))
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(!_loc17_)
                                 {
                                    addr137:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc16_)
                                 {
                                    §§push(param2.p1.y);
                                    if(!_loc17_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc16_ || param1)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc16_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc16_)
                                             {
                                                _loc8_ = §§pop();
                                                addr166:
                                                §§push(_loc7_);
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc17_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || this)
                                                      {
                                                         addr185:
                                                         §§push(_loc8_);
                                                         if(_loc16_ || param2)
                                                         {
                                                            §§push(§§pop() * _loc8_);
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc16_ || param2)
                                                               {
                                                                  addr213:
                                                                  §§push(§§pop() - b2internal::6q * b2internal::6q);
                                                                  if(_loc17_ && param1)
                                                                  {
                                                                  }
                                                                  addr222:
                                                                  var _loc9_:* = §§pop();
                                                                  §§push(param2.p2.x);
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     §§push(§§pop() - param2.p1.x);
                                                                     if(!(_loc17_ && param3))
                                                                     {
                                                                        addr244:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(param2.p2.y);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() - param2.p1.y);
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           addr262:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc7_);
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc16_ || param3)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc16_ || this)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr301:
                                                                                    §§push(§§pop() * _loc11_);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                 }
                                                                                 addr307:
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc10_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(_loc16_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc17_ && param3))
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             addr332:
                                                                                             §§push(§§pop() + §§pop() * _loc11_);
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                addr340:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          if(_loc16_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc16_ || param3)
                                                                                             {
                                                                                                addr361:
                                                                                                §§push(_loc13_);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr383:
                                                                                                   §§push(§§pop() * _loc9_);
                                                                                                   if(!(_loc17_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc16_ || param2)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc14_:* = §§pop();
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() < 0);
                                                                                                      if(_loc16_ || param2)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr399:
                                                                                                               §§pop();
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(!(_loc17_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() < Number.MIN_VALUE);
                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                     {
                                                                                                                        addr420:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§goto(addr424);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!(_loc17_ && param2))
                                                                                                                        {
                                                                                                                           addr433:
                                                                                                                           §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr441:
                                                                                                                           var _loc15_:* = §§pop();
                                                                                                                           if(!_loc17_)
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
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop4:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§push(param2.§%!I§);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc13_);
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(false);
                                                                                                                                                                  if(_loc16_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               loop10:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        addr590:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop7;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop0;
                                                                                                                                                                     }
                                                                                                                                                                     addr589:
                                                                                                                                                                  }
                                                                                                                                                                  addr606:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     addr607:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        param1.fraction = _loc15_;
                                                                                                                                                                        loop13:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param1.normal);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    addr548:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr549:
                                                                                                                                                                              }
                                                                                                                                                                              loop17:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 while(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.normal);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr517:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr520:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!(_loc16_ || param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(_loc16_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc17_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr548);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr549);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr517);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr520);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(_loc16_ || param3)
                                                                                                                                                            {
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr590);
                                                                                                                                                }
                                                                                                                                                §§goto(addr589);
                                                                                                                                             }
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr574);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr607);
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr424);
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            addr424:
                                                                                                            return false;
                                                                                                         }
                                                                                                         §§goto(addr420);
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                   §§goto(addr433);
                                                                                                }
                                                                                                §§goto(addr383);
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§goto(addr383);
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr307);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                   §§goto(addr213);
                                                }
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr137);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr84);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr75);
         }
         §§goto(addr84);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc7_ && this))
         {
            §§push(_loc3_.col1.x);
            if(_loc6_)
            {
               §§push(this.§#!j§.x);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr63);
               }
               §§goto(addr58);
            }
            addr63:
            §§push(_loc3_.col2.x);
            if(!(_loc7_ && param2))
            {
               addr58:
               §§push(§§pop() * this.§#!j§.y);
            }
            §§push(§§pop() + (§§pop() + §§pop()));
            if(_loc7_ && this)
            {
            }
            §§goto(addr72);
         }
         addr72:
         var _loc4_:Number = §§pop();
         §§push(param2.position.y);
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc3_.col1.y);
            if(_loc6_ || param2)
            {
               §§push(this.§#!j§.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && param1))
                  {
                     addr116:
                     §§push(_loc3_.col2.y);
                     if(!(_loc7_ && this))
                     {
                        addr126:
                        §§push(§§pop() * this.§#!j§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_ && _loc3_)
                  {
                  }
                  §§goto(addr140);
               }
               §§goto(addr126);
            }
            §§goto(addr116);
         }
         addr140:
         var _loc5_:Number = §§pop();
         if(_loc6_ || param1)
         {
            §§push(param1.§]S§);
            §§push(_loc4_);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() - b2internal::6q);
            }
            §§push(_loc5_);
            if(!_loc7_)
            {
               §§push(§§pop() - b2internal::6q);
            }
            §§pop().Set(§§pop(),§§pop());
         }
         do
         {
            param1.§-!o§.Set(_loc4_ + b2internal::6q,_loc5_ + b2internal::6q);
         }
         while(_loc7_);
         
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc4_ || this)
               {
                  addr150:
                  §§push(§§pop() * b2internal::6q);
                  if(!_loc3_)
                  {
                     addr154:
                     §§push(§§pop() * b2internal::6q);
                  }
                  §§pop().§+!<§ = §§pop();
                  while(true)
                  {
                     param1.center.SetV(this.§#!j§);
                     for(; _loc4_; §§pop().§+j§ = §§pop(),if(_loc4_ || this)
                     {
                        return;
                     })
                     {
                        §§push(param1);
                        §§push(param1.§+!<§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!(_loc3_ && param2))
                        {
                           §§push(§§pop() * b2internal::6q);
                           if(_loc4_ || param1)
                           {
                              §§push(§§pop() * b2internal::6q);
                              if(!_loc4_)
                              {
                              }
                              addr107:
                              §§push(§§pop() * §§pop());
                              continue;
                           }
                           §§push(this.§#!j§.x);
                           if(_loc4_)
                           {
                              §§push(this.§#!j§);
                              if(_loc4_)
                              {
                                 §§push(§§pop().x);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_ || param2)
                                    {
                                       addr93:
                                       §§push(this.§#!j§.y);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr105:
                                          §§push(§§pop() + §§pop() * this.§#!j§.y);
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr107);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr107);
                     }
                  }
                  addr157:
               }
               §§goto(addr154);
            }
            §§goto(addr150);
         }
         §§goto(addr157);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§,^§(param3,this.§#!j§);
         §§push(b2Math.§1!P§(param1,_loc5_));
         if(_loc11_ || param2)
         {
            §§push(param2);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(_loc11_ || param1)
               {
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                     addr50:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               §§goto(addr50);
            }
            var _loc6_:* = §§pop();
            if(_loc11_)
            {
               if(§§pop() < -b2internal::6q + Number.MIN_VALUE)
               {
                  if(!_loc12_)
                  {
                     return 0;
                  }
                  addr89:
                  §§push(Math.PI * b2internal::6q);
                  if(!_loc12_)
                  {
                     §§push(§§pop() * b2internal::6q);
                     if(!(_loc11_ || param1))
                     {
                        addr111:
                        var _loc7_:* = §§pop();
                        §§push(_loc6_);
                        if(_loc11_ || param3)
                        {
                           §§push(§§pop() * _loc6_);
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        if(_loc11_ || param3)
                        {
                           §§push(_loc7_);
                           if(_loc11_)
                           {
                              §§push(§§pop() * (Math.asin(_loc6_ / b2internal::6q) + Math.PI / 2));
                              if(!_loc12_)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc11_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc12_)
                                          {
                                             addr186:
                                             _loc9_ = §§pop();
                                             §§push(-2 / 3);
                                             if(!(_loc12_ && this))
                                             {
                                                §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                if(_loc11_)
                                                {
                                                   addr206:
                                                   addr207:
                                                   §§push(§§pop() / _loc9_);
                                                   if(_loc12_)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                          addr211:
                                          var _loc10_:* = §§pop();
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(param4);
                                             §§push(_loc5_.x);
                                             if(_loc11_ || param2)
                                             {
                                                §§push(param1.x);
                                                if(_loc11_ || this)
                                                {
                                                   §§push(§§pop() * _loc10_);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          do
                                          {
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
                                          }
                                          while(!_loc11_);
                                          
                                          return _loc9_;
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr206);
                           }
                        }
                        §§goto(addr186);
                     }
                  }
               }
               else
               {
                  §§push(_loc6_);
                  if(!_loc12_)
                  {
                     addr75:
                     if(§§pop() > b2internal::6q)
                     {
                        if(_loc11_)
                        {
                           param4.SetV(_loc5_);
                           if(!(_loc12_ && this))
                           {
                              §§goto(addr89);
                           }
                           else
                           {
                              addr105:
                              §§push(b2internal::6q * b2internal::6q);
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr105);
                  }
               }
               return §§pop();
            }
            §§goto(addr75);
         }
         §§goto(addr50);
      }
      
      public function §=!`§() : b2Vec2
      {
         return this.§#!j§;
      }
      
      public function §!W§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!j§.SetV(param1);
         }
      }
      
      public function §#!Q§() : Number
      {
         return b2internal::6q;
      }
      
      public function §^!4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §6q§ = param1;
         }
      }
   }
}
