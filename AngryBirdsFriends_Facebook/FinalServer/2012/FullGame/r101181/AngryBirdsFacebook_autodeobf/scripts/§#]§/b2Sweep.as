package §#]§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §0!O§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.localCenter = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.c0 = new b2Vec2();
            while(true)
            {
               this.c = new b2Vec2();
               while(_loc2_)
               {
                  continue loop0;
                  super();
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(true)
               {
                  this.c.SetV(param1.c);
                  while(_loc2_)
                  {
                     this.a0 = param1.a0;
                     do
                     {
                        this.a = param1.a;
                        continue loop0;
                     }
                     while(_loc3_);
                     
                     if(_loc2_)
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc2_ || _loc1_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               loop1:
               while(true)
               {
                  _loc1_.c.SetV(this.c);
                  while(true)
                  {
                     _loc1_.a0 = this.a0;
                     addr86:
                     while(!_loc3_)
                     {
                        continue loop0;
                     }
                     addr63:
                     continue loop1;
                     loop4:
                     while(_loc2_ || _loc3_)
                     {
                        while(true)
                        {
                           _loc1_.§0!O§ = this.§0!O§;
                           if(_loc3_ && _loc2_)
                           {
                              continue loop4;
                           }
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr86);
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function GetTransform(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
            §§push(param1.position);
            if(_loc6_)
            {
               §§push(1);
               if(_loc6_)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc6_ || _loc3_)
                     {
                        §§push(this.c0);
                        if(_loc6_ || param2)
                        {
                           §§push(§§pop().x);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                                 §§push(param2);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(this.c);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr110:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc5_)
                                                   {
                                                      addr113:
                                                      addr115:
                                                      §§push(this.c0.y);
                                                      if(_loc6_)
                                                      {
                                                         addr118:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            addr129:
                                                            §§pop().y = §§pop() + §§pop();
                                                            §§push(1 - param2);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push(this.a0);
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(param2);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        addr168:
                                                                        §§push(§§pop() + §§pop() * this.a);
                                                                        if(!_loc6_)
                                                                        {
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(param1.R);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§pop().Set(_loc3_);
                                                                              addr191:
                                                                              §§push(param1.R);
                                                                           }
                                                                           var _loc4_:b2Mat22 = §§pop();
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§push(param1.position);
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.position);
                                                                                 addr328:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr329:
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.col1);
                                                                                       addr331:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             §§push(this.localCenter);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   addr360:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.col2);
                                                                                                      addr362:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                      }
                                                                                                   }
                                                                                                   addr360:
                                                                                                }
                                                                                                addr363:
                                                                                                addr248:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.localCenter);
                                                                                                   addr365:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      addr366:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr367:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr368:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr369:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§push(this.localCenter);
                                                                                                if(!(_loc6_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         §§push(_loc4_.col2);
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc5_ && param2))
                                                                                                            {
                                                                                                               addr292:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(this.localCenter);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr307:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc5_ && param2))
                                                                                                                        {
                                                                                                                           addr315:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr318:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    return;
                                                                                                                                    addr323:
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           §§goto(addr360);
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     §§goto(addr366);
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               §§goto(addr367);
                                                                                                            }
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                         §§goto(addr362);
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   §§goto(addr315);
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        §§goto(addr191);
                                                                     }
                                                                  }
                                                                  §§goto(addr168);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr168);
                                                            addr128:
                                                         }
                                                         §§goto(addr129);
                                                      }
                                                      addr126:
                                                      §§push(this.c.y);
                                                   }
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr129);
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr129);
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr129);
      }
      
      public function §61§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc3_)
         {
            §§push(this.§0!O§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(1 - this.§0!O§);
                              if(_loc4_ || this)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       loop22:
                                       while(§§pop())
                                       {
                                          loop23:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§0!O§);
                                                   if(!_loc3_)
                                                   {
                                                      addr271:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(1 - this.§0!O§);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr272:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(this.c0);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  addr175:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     addr176:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.c0);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 addr190:
                                                                              }
                                                                              addr191:
                                                                              addr109:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.c);
                                                                                 addr193:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr194:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr195:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(this.c0);
                                                                              if(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                §§push(this.c);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      addr166:
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         do
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(1 - _loc2_);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(this.a0);
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr71:
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc4_ || param1)
                                                                                                                     {
                                                                                                                        addr79:
                                                                                                                        §§push(§§pop() * this.a);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr79);
                                                                                                            }
                                                                                                            §§goto(addr71);
                                                                                                         }
                                                                                                         while(§§pop().a0 = §§pop(), do
                                                                                                         {
                                                                                                            this.§0!O§ = param1;
                                                                                                         }
                                                                                                         while(_loc3_ && this);
                                                                                                         , _loc3_ && _loc2_);
                                                                                                         
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr46:
                                                                                                            break loop22;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                         }
                                                                                                         addr196:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && param1))
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      §§goto(addr191);
                                                                                                   }
                                                                                                   §§goto(addr195);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr193);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr191);
                                                                                             }
                                                                                             §§goto(addr193);
                                                                                          }
                                                                                          §§goto(addr195);
                                                                                       }
                                                                                       §§goto(addr166);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr190);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr166);
                                                                           }
                                                                        }
                                                                        §§goto(addr196);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr271:
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                continue loop1;
                                                addr240:
                                             }
                                             §§goto(addr271);
                                          }
                                       }
                                       return;
                                       addr235:
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr240);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr235);
                  }
               }
            }
         }
         §§goto(addr46);
      }
   }
}
