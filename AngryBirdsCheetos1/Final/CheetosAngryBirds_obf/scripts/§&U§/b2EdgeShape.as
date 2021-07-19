package §&U§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2AABB;
   import §9"§.b2RayCastInput;
   import §9"§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §<[§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §^H§:Number;
      
      b2internal var §^3§:b2Vec2;
      
      b2internal var §=!E§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §,5§:b2EdgeShape;
      
      b2internal var §1!=§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§<[§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        continue loop0;
                        addr381:
                        if(_loc3_ && param2)
                        {
                           continue;
                        }
                        super();
                        loop10:
                        while(true)
                        {
                           §8!J§ = b2internal:: Y;
                           loop11:
                           while(true)
                           {
                              this.§1!=§ = null;
                              loop12:
                              while(_loc4_)
                              {
                                 this.§,5§ = null;
                                 loop13:
                                 while(true)
                                 {
                                    this.m_v1 = param1;
                                    loop14:
                                    while(true)
                                    {
                                       this.m_v2 = param2;
                                       while(_loc4_)
                                       {
                                          §§push(this.§=!E§);
                                          §§push(this.m_v2.x);
                                          if(!_loc3_)
                                          {
                                             §§push(this.m_v1.x);
                                             if(!_loc3_)
                                             {
                                                addr323:
                                                §§push(§§pop() - §§pop());
                                                §§push(this.m_v2.y);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - this.m_v1.y);
                                                }
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             loop16:
                                             while(!_loc3_)
                                             {
                                                this.§^H§ = this.§=!E§.Normalize();
                                                loop17:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr301:
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(this.§^3§);
                                                         §§push(this.§=!E§.y);
                                                         §§push(this.§=!E§.x);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(this.m_coreV1);
                                                            §§push(b2Settings.b2_toiSlop);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(-§§pop());
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(this.§^3§.x);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(this.§=!E§.x);
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(this.m_v1.x);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr229:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(b2Settings.b2_toiSlop);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                    }
                                                                                    addr264:
                                                                                    §§pop().Set(§§pop(),§§pop() + this.m_v1.y);
                                                                                    addr260:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr269:
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(this.m_coreV2);
                                                                                                   §§push(b2Settings.b2_toiSlop);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr82:
                                                                                                         §§push(this.§^3§.x);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(this.§=!E§.x);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.m_v2.x);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr104:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        §§push(b2Settings.b2_toiSlop);
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr144:
                                                                                                                        §§pop().Set(§§pop(),§§pop());
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(this.§^3§.y);
                                                                                                                        if(_loc4_ || param2)
                                                                                                                        {
                                                                                                                           addr126:
                                                                                                                           §§push(§§pop() + this.§=!E§.y);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr140:
                                                                                                                                 §§push(this.m_v2.y);
                                                                                                                              }
                                                                                                                              §§goto(addr144);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr104);
                                                                                                            }
                                                                                                            §§goto(addr126);
                                                                                                         }
                                                                                                         §§goto(addr140);
                                                                                                      }
                                                                                                      §§goto(addr104);
                                                                                                   }
                                                                                                   §§goto(addr82);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.m_cornerDir1 = new b2Vec2();
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   addr400:
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    while(!(_loc3_ && param1))
                                                                                    {
                                                                                       §§goto(addr381);
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr374:
                                                                                 }
                                                                              }
                                                                              §§push(this.§^3§.y);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr246:
                                                                                 §§push(§§pop() - this.§=!E§.y);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr252:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       §§goto(addr260);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                        §§goto(addr264);
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   this.m_cornerDir2 = new b2Vec2();
                                                   §§goto(addr374);
                                                   §§goto(addr301);
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop16;
                                                }
                                                continue loop11;
                                             }
                                             continue;
                                          }
                                          §§goto(addr323);
                                       }
                                       continue loop13;
                                    }
                                 }
                              }
                              continue loop10;
                           }
                        }
                     }
                  }
                  addr406:
                  while(!(_loc3_ && param2))
                  {
                     while(true)
                     {
                        this.§=!E§ = new b2Vec2();
                        §§goto(addr400);
                     }
                  }
               }
            }
         }
         §§goto(addr413);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(!(_loc19_ && this))
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc19_ && param3))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(!_loc19_)
            {
               §§push(§§pop() - param2.p1.y);
               if(!_loc19_)
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc4_ = param3.R;
               §§push(param3.position.x);
               if(!(_loc19_ && param1))
               {
                  §§push(_loc4_.col1.x);
                  if(_loc18_)
                  {
                     §§push(this.m_v1.x);
                     if(!_loc19_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc19_ && param2))
                        {
                           addr97:
                           §§push(_loc4_.col2.x);
                           if(!_loc19_)
                           {
                              addr102:
                              §§push(§§pop() * this.m_v1.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc19_)
                        {
                           addr111:
                           var _loc7_:Number = §§pop();
                           §§push(param3.position.y);
                           if(_loc18_ || param2)
                           {
                              §§push(_loc4_.col1.y);
                              if(!(_loc19_ && param3))
                              {
                                 §§push(this.m_v1.x);
                                 if(!(_loc19_ && param3))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc18_)
                                    {
                                       addr145:
                                       §§push(_loc4_.col2.y);
                                       if(_loc18_ || param2)
                                       {
                                          addr155:
                                          §§push(§§pop() * this.m_v1.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc19_ && param2))
                                    {
                                       addr168:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(param3.position.y);
                                    if(!_loc19_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!_loc19_)
                                       {
                                          §§push(this.m_v2.x);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc19_ && param1))
                                             {
                                                addr193:
                                                §§push(_loc4_.col2.y);
                                                if(_loc18_)
                                                {
                                                   addr198:
                                                   §§push(§§pop() * this.m_v2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc18_ || param1)
                                                   {
                                                      addr214:
                                                      §§push(§§pop() - _loc8_);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   §§push(param3.position.x);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(_loc4_.col1.x);
                                                      if(_loc18_ || this)
                                                      {
                                                         §§push(this.m_v2.x);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               addr242:
                                                               §§push(_loc4_.col2.x);
                                                               if(_loc18_)
                                                               {
                                                                  addr251:
                                                                  §§push(§§pop() + §§pop() * this.m_v2.y);
                                                                  if(_loc18_ || param2)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr263:
                                                                        §§push(§§pop() - _loc7_);
                                                                        if(_loc19_)
                                                                        {
                                                                        }
                                                                        addr270:
                                                                        var _loc10_:Number = §§pop();
                                                                        addr269:
                                                                        §§push(100 * Number.MIN_VALUE);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc5_);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc18_ || param2)
                                                                              {
                                                                                 addr293:
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc10_);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr300:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_ || param3)
                                                                                       {
                                                                                          addr318:
                                                                                          §§push(-§§pop());
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             addr316:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc12_:*;
                                                                                          §§push(_loc12_ = §§pop());
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   if(_loc18_ || param2)
                                                                                                   {
                                                                                                      §§push(param2.p1);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc18_ || param2)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr368:
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        addr787:
                                                                                                                        §§push(param2.p1.y);
                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              addr807:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr808);
                                                                                                                     }
                                                                                                                     §§goto(addr634);
                                                                                                                  }
                                                                                                                  §§goto(addr761);
                                                                                                               }
                                                                                                               §§goto(addr368);
                                                                                                            }
                                                                                                            §§goto(addr781);
                                                                                                         }
                                                                                                         §§goto(addr783);
                                                                                                      }
                                                                                                      §§goto(addr787);
                                                                                                   }
                                                                                                   §§goto(addr609);
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr781);
                                                                                          }
                                                                                          §§goto(addr743);
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                           §§goto(addr300);
                                                                        }
                                                                        §§goto(addr293);
                                                                     }
                                                                     §§push(-§§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr263);
                                                }
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr97);
               }
               §§goto(addr111);
            }
            §§goto(addr63);
         }
         §§goto(addr50);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(_loc9_ || _loc3_)
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc3_.col1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop3:
                     while(true)
                     {
                        §§push(this.m_v1);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(param2.position);
                                                            loop16:
                                                            for(; _loc9_; while(!(_loc8_ && this))
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc9_ || param1)
                                                               {
                                                                  §§goto(addr454);
                                                                  §§push(_loc3_.col1);
                                                               }
                                                               §§goto(addr509);
                                                               §§goto(addr515);
                                                            })
                                                            {
                                                               §§push(§§pop().y);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(_loc8_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              addr545:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 addr546:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_v1);
                                                                                    if(!(_loc9_ || this))
                                                                                    {
                                                                                       break;
                                                                                       addr556:
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    while(!_loc8_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              loop47:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ || _loc3_))
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 addr359:
                                                                                 §§push(_loc3_.col2);
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       loop43:
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr388:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop45:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(!(_loc9_ || _loc3_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     if(_loc8_ && param1)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop46:
                                                                                                                     while(!(_loc8_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        loop48:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           loop49:
                                                                                                                           while(_loc9_)
                                                                                                                           {
                                                                                                                              addr235:
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 loop50:
                                                                                                                                 while(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr245:
                                                                                                                                    if(_loc9_ || this)
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          continue loop48;
                                                                                                                                       }
                                                                                                                                       §§push(param1.§!!C§);
                                                                                                                                       loop51:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             loop52:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && this))
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   loop53:
                                                                                                                                                   for(; !_loc8_; loop59:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop53;
                                                                                                                                                      }
                                                                                                                                                      §§push(param1.§<0§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            break loop59;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr147:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr37:
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr177);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         addr223:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr230);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr182);
                                                                                                                                                   },loop60:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr222);
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      addr264:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop60;
                                                                                                                                                      }
                                                                                                                                                   },§§goto(addr230))
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§<0§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         addr195:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr196:
                                                                                                                                                            while(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop49;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop50;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§!!C§);
                                                                                                                                                                     }
                                                                                                                                                                     addr177:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§!!C§);
                                                                                                                                                                     if(!(_loc8_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop51;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     addr180:
                                                                                                                                                                     while(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        continue loop53;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop52;
                                                                                                                                                                  }
                                                                                                                                                                  addr230:
                                                                                                                                                               }
                                                                                                                                                               continue loop47;
                                                                                                                                                            }
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param2.position);
                                                                                                                                                      if(!(_loc9_ || param2))
                                                                                                                                                      {
                                                                                                                                                         addr276:
                                                                                                                                                         break;
                                                                                                                                                         addr509:
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      loop42:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr290:
                                                                                                                                                               §§push(_loc3_.col1);
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  while(!(_loc8_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr245);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr290);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop18;
                                                                                                                                                                  addr454:
                                                                                                                                                               }
                                                                                                                                                               if(_loc8_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop6;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               §§push(this.m_v2);
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr337:
                                                                                                                                                                     if(!(_loc8_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           continue loop47;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop5;
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop8;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.m_v2);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           addr499:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr337);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop11;
                                                                                                                                                                     addr492:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr501:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.col2);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr492);
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr545);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr359);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop7;
                                                                                                                                                                           addr482:
                                                                                                                                                                        }
                                                                                                                                                                        while(!(_loc8_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           break loop42;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           addr561:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr562:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                 addr563:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param2.position);
                                                                                                                                                                                    break loop41;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr501:
                                                                                                                                                                        addr560:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr464:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr501);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr464);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr561);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         §§goto(addr235);
                                                                                                                                                      }
                                                                                                                                                      while(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                         continue loop17;
                                                                                                                                                         §§goto(addr276);
                                                                                                                                                      }
                                                                                                                                                      addr276:
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   continue loop16;
                                                                                                                                                   addr515:
                                                                                                                                                }
                                                                                                                                                addr263:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr264);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr262:
                                                                                                                                          }
                                                                                                                                          §§goto(addr263);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr462);
                                                                                                                                 }
                                                                                                                                 continue loop45;
                                                                                                                              }
                                                                                                                              §§goto(addr276);
                                                                                                                           }
                                                                                                                           continue loop46;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                     addr425:
                                                                                                                  }
                                                                                                                  §§goto(addr562);
                                                                                                               }
                                                                                                               §§goto(addr512);
                                                                                                            }
                                                                                                            §§goto(addr425);
                                                                                                         }
                                                                                                         §§goto(addr501);
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr560);
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   addr388:
                                                                                                   addr559:
                                                                                                }
                                                                                                §§goto(addr556);
                                                                                             }
                                                                                             §§goto(addr499);
                                                                                          }
                                                                                          §§goto(addr498);
                                                                                       }
                                                                                       §§goto(addr546);
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr482);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr559);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            continue loop0;
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
         §§goto(addr433);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param1.§6O§ = 0;
            do
            {
               param1.center.SetV(this.m_v1);
               do
               {
                  param1.§`$§ = 0;
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!_loc10_)
         {
            §§push(param2);
            if(!(_loc10_ && this))
            {
               addr31:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc11_)
               {
                  addr35:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§@E§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§@E§(param3,this.m_v2);
               §§push(b2Math.static(param1,_loc6_));
               if(_loc11_)
               {
                  §§push(§§pop() - param2);
                  if(!(_loc10_ && this))
                  {
                     addr69:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(b2Math.static(param1,_loc7_));
                  if(!_loc10_)
                  {
                     §§push(§§pop() - param2);
                     if(_loc11_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc9_:* = §§pop();
                  if(_loc11_ || param1)
                  {
                     §§push(_loc8_);
                     loop0:
                     while(true)
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc9_);
                              loop2:
                              do
                              {
                                 §§push(0);
                                 if(!_loc10_)
                                 {
                                    if(!(_loc11_ || param2))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc11_ || param3)
                                          {
                                             §§push(_loc7_);
                                             §§push(_loc9_);
                                             if(!_loc10_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc11_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            addr405:
                                                            §§push(§§pop() / §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               addr408:
                                                               §§push(_loc6_.x);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                  }
                                                                  addr437:
                                                                  §§pop().x = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§push(_loc9_);
                                                                        if(_loc11_ || param3)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              addr288:
                                                                              §§push(_loc8_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr309:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr312:
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   addr330:
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr354:
                                                                                                      §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                      addr352:
                                                                                                      loop5:
                                                                                                      while(_loc11_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(_loc10_ && param2)
                                                                                                            {
                                                                                                               addr238:
                                                                                                               return 0;
                                                                                                               addr238:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr656:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               §§push(_loc5_.x);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        addr258:
                                                                                                                        §§push(§§pop() + _loc7_.x);
                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                        {
                                                                                                                           §§push(§§pop() / 3);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     do
                                                                                                                     {
                                                                                                                        §§push(param4);
                                                                                                                        §§push(_loc5_.y);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           if(_loc11_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc10_ && param3)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr213:
                                                                                                                              §§push(_loc7_.y);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc11_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 3);
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr213);
                                                                                                                     }
                                                                                                                     while(§§pop().y = §§pop(), _loc10_);
                                                                                                                     
                                                                                                                     if(_loc10_ && this)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(0.5);
                                                                                                                        if(!(_loc11_ || param1))
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              addr655:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr656);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc11_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc11_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!(_loc10_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(_loc11_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc10_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr601:
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc11_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  addr609:
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!(_loc10_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc9_);
                                                                                                                                                                     if(!(_loc10_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr637:
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        if(_loc11_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr634:
                                                                                                                                                                           §§push(_loc7_.x);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop() + §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(_loc11_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(_loc11_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                    if(_loc11_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc11_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                          if(_loc11_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr491:
                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                             if(_loc11_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr500:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc11_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                addr545:
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr238);
                                                                                                                                                                                                   §§goto(addr545);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr546:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr516:
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(!(_loc10_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - _loc9_);
                                                                                                                                                                                                if(_loc11_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr533:
                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr543:
                                                                                                                                                                                                      §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr545);
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr543);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr533);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          if(_loc11_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr516);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr543);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr516);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr533);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr500);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr491);
                                                                                                                                                                        }
                                                                                                                                                                        addr639:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr637);
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr637);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr634);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr637);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr609);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr601);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr637);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr601);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr654:
                                                                                                                        }
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(_loc11_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc11_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_.y);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.y);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          addr134:
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc10_ && param2))
                                                                                                                                          {
                                                                                                                                             addr142:
                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.y);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc11_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr163:
                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                      if(!(_loc10_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr175:
                                                                                                                                                         §§push(§§pop() * (§§pop() - _loc5_.x));
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr175);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr175);
                                                                                                                                             }
                                                                                                                                             addr177:
                                                                                                                                             §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          §§goto(addr177);
                                                                                                                                       }
                                                                                                                                       §§goto(addr163);
                                                                                                                                    }
                                                                                                                                    §§goto(addr175);
                                                                                                                                 }
                                                                                                                                 §§goto(addr134);
                                                                                                                              }
                                                                                                                              §§goto(addr142);
                                                                                                                           }
                                                                                                                           §§goto(addr163);
                                                                                                                        }
                                                                                                                        §§goto(addr142);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr654);
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr258);
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!(_loc10_ && param3))
                                                                                                   {
                                                                                                      addr350:
                                                                                                      §§goto(addr352);
                                                                                                      §§push(_loc7_.y);
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr350);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr546);
                                                                  }
                                                               }
                                                               addr436:
                                                               §§goto(addr437);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(_loc8_);
                                                            if(_loc11_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc11_)
                                                               {
                                                                  addr426:
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        addr433:
                                                                        §§push(_loc7_.x);
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                               }
                                                               §§goto(addr436);
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§goto(addr433);
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      §§goto(addr426);
                                                   }
                                                   §§goto(addr405);
                                                }
                                                §§goto(addr408);
                                             }
                                             §§goto(addr437);
                                          }
                                          §§goto(addr639);
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr655);
                              }
                              while(_loc10_);
                              
                              continue loop0;
                           }
                           §§goto(addr653);
                        }
                     }
                  }
                  §§goto(addr637);
               }
               §§goto(addr69);
            }
            §§goto(addr35);
         }
         §§goto(addr31);
      }
      
      public function §^s§() : Number
      {
         return this.§^H§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §3c§() : b2Vec2
      {
         return this.§^3§;
      }
      
      public function §<N§() : b2Vec2
      {
         return this.§=!E§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §`P§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc3_ || param1)
         {
            §§push(_loc2_.col1.x);
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc3_ || _loc2_)
                     {
                        addr69:
                        §§push(this.m_coreV1);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop().y);
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr112);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr112);
               }
               §§goto(addr69);
            }
            §§goto(addr118);
         }
         addr112:
         §§push(§§pop() + §§pop());
         §§push(param1.position.y);
         if(_loc3_)
         {
            addr118:
            §§push(_loc2_.col1.y);
            if(!_loc4_)
            {
               addr125:
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr141:
                     §§push(_loc2_.col2.y);
                     if(_loc3_)
                     {
                        addr160:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr160);
            }
            §§push(§§pop() + §§pop());
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §9>§() : b2EdgeShape
      {
         return this.§,5§;
      }
      
      public function §9!J§() : b2EdgeShape
      {
         return this.§1!=§;
      }
      
      public function §0C§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc9_)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc10_ && param1))
            {
               §§push(this.m_coreV1.x);
               if(!_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc10_ && param1))
                  {
                     addr48:
                     §§push(_loc4_.col2.x);
                     if(!_loc10_)
                     {
                        addr57:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr57);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || param3)
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(!_loc10_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc10_)
                     {
                        §§push(this.m_coreV1.x);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc10_)
                           {
                              addr96:
                              §§push(_loc4_.col2.y);
                              if(_loc9_)
                              {
                                 addr91:
                                 §§push(§§pop() * this.m_coreV1.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc10_)
                              {
                                 addr99:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param1.position.x);
                              if(_loc9_ || param3)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(_loc9_)
                                    {
                                       addr144:
                                       §§push(§§pop() * §§pop());
                                       if(_loc9_ || param3)
                                       {
                                          §§push(_loc4_.col2.x);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc10_)
                                       {
                                          addr148:
                                          var _loc7_:Number = §§pop();
                                          §§push(param1.position.y);
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(_loc4_.col1.y);
                                             if(!(_loc10_ && param2))
                                             {
                                                §§push(this.m_coreV2.x);
                                                if(_loc9_)
                                                {
                                                   addr197:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(_loc4_.col2.y);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() * this.m_coreV2.y);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc9_ || this)
                                                   {
                                                      addr205:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc9_ || param3)
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc10_ && param3))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_)
                                                            {
                                                               addr307:
                                                               §§push(_loc6_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr310:
                                                                  §§push(param3);
                                                                  if(!(_loc10_ && param2))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        addr327:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(_loc9_ || param2)
                                                                        {
                                                                           addr335:
                                                                           §§push(param2);
                                                                           if(_loc9_ || param3)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc10_ && param3)
                                                                              {
                                                                              }
                                                                              addr367:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 §§push(this.§<[§);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       if(!(_loc10_ && this))
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          loop1:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<[§);
                                                                                                         loop8:
                                                                                                         while(!_loc10_)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            addr231:
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr241:
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr280:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§<[§);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                     §§goto(addr241);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§<[§);
                                                                                                                     addr278:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        addr279:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           §§goto(addr280);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr280:
                                                                                                                  addr372:
                                                                                                                  addr215:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr280);
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr372);
                                                                                                               }
                                                                                                               §§goto(addr215);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  §§goto(addr231);
                                                                                                               }
                                                                                                               addr371:
                                                                                                            }
                                                                                                            §§goto(addr280);
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr274:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<[§);
                                                                                                         addr370:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr368:
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                 }
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           addr364:
                                                                           §§goto(addr367);
                                                                           §§push(§§pop() + §§pop() * param3);
                                                                        }
                                                                        §§push(_loc8_);
                                                                        if(!_loc9_)
                                                                        {
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr367);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr99);
               }
               §§goto(addr57);
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
      
      b2internal function §1!H§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§1!=§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
            }
            addr82:
         }
         loop1:
         do
         {
            this.m_cornerDir1 = param3;
            while(!_loc6_)
            {
               this.m_cornerConvex1 = param4;
               if(!(_loc6_ && param2))
               {
                  continue loop1;
               }
            }
            §§goto(addr82);
         }
         while(!(_loc5_ || param2));
         
      }
      
      b2internal function § !-§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§,5§ = param1;
            loop0:
            while(true)
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  continue loop0;
                  addr44:
                  if(_loc5_ || param1)
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
