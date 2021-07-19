package §%4§
{
   import §2k§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §^c§:Vector.<b2Vec2>;
      
      public var §`"2§:int;
      
      public var §&!$§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§;!F§());
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(b2Shape.§;n§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr200:
                           }
                        }
                        else
                        {
                           addr187:
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§goto(addr200);
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§<!D§);
                        if(!_loc5_)
                        {
                           addr186:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr187);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr206);
                  }
               }
               §§goto(addr186);
            }
            §§goto(addr187);
         }
         addr206:
         loop8:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc6_ || this)
               {
                  this.§^c§ = new Vector.<b2Vec2>(1,true);
                  while(true)
                  {
                     this.§^c§[0] = _loc2_.§!X§;
                     addr58:
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     this.§&!$§ = _loc2_.§&!$§;
                     if(!(_loc5_ && param1))
                     {
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              this.§`"2§ = 1;
                              addr56:
                              addr73:
                              while(!_loc5_)
                              {
                                 §§goto(addr58);
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        break loop8;
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr73);
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(!_loc5_)
               {
                  this.§^c§ = _loc3_.§^c§;
                  loop7:
                  while(true)
                  {
                     this.§`"2§ = _loc3_.§6!-§;
                     addr136:
                     addr143:
                     while(!(_loc6_ || _loc2_))
                     {
                        continue loop7;
                     }
                  }
               }
               else
               {
                  addr116:
                  if(true)
                  {
                     break;
                  }
               }
               loop0:
               while(true)
               {
                  this.§&!$§ = _loc3_.§&!$§;
                  addr123:
                  while(_loc5_ && _loc2_)
                  {
                     §§goto(addr136);
                     continue loop0;
                  }
                  break loop8;
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr116);
               }
               §§goto(addr123);
         }
      }
      
      public function §5R§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^c§[0].x * param1.x);
         if(_loc6_ || param1)
         {
            §§push(§§pop() + this.§^c§[0].y * param1.y);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(_loc6_ || this)
               {
                  if(§§pop() >= this.§`"2§)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc2_);
                        break;
                     }
                     loop1:
                     for(; !(_loc6_ || _loc2_); while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     })
                     {
                        while(true)
                        {
                           if(!(_loc7_ && this))
                           {
                              continue loop1;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_ && _loc2_)
                              {
                                 break;
                              }
                              if(_loc6_ || param1)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    addr141:
                                    while(true)
                                    {
                                       §§push(this.§^c§[_loc4_].y * param1.y);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr164:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                   }
                                                   addr164:
                                                }
                                             }
                                             §§goto(addr164);
                                          }
                                          addr152:
                                       }
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             continue loop1;
                                          }
                                          if(_loc7_ && _loc2_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc7_)
                                          {
                                             addr187:
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop3;
                                             }
                                             addr187:
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr164);
                           }
                           _loc3_ = §§pop();
                        }
                     }
                     continue;
                  }
                  §§push(this.§^c§[_loc4_].x * param1.x);
                  §§goto(addr141);
               }
               §§goto(addr187);
            }
            break;
         }
         return §§pop();
      }
      
      public function §!F§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^c§[0].x * param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.§^c§[0].y * param1.y);
            if(!(_loc7_ && _loc2_))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() >= this.§`"2§)
                  {
                     if(!(_loc7_ && this))
                     {
                        if(!_loc7_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc6_)
                           {
                              loop4:
                              while(true)
                              {
                                 _loc4_++;
                                 addr81:
                                 while(true)
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       break loop4;
                                    }
                                    addr164:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc7_ && param1))
                                       {
                                          addr183:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                          addr183:
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                              }
                              continue loop0;
                              addr79:
                           }
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_ || this)
                              {
                                 if(_loc6_)
                                 {
                                    addr111:
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    addr162:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                    }
                                    addr162:
                                 }
                                 else
                                 {
                                    addr153:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || this)
                                       {
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr162);
                                          }
                                          addr161:
                                       }
                                    }
                                    addr153:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       §§goto(addr79);
                                    }
                                    §§goto(addr164);
                                 }
                              }
                              §§goto(addr111);
                           }
                           _loc3_ = §§pop();
                        }
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     §§push(this.§^c§[_loc4_].x * param1.x);
                     if(_loc6_ || this)
                     {
                        §§push(this.§^c§[_loc4_].y * param1.y);
                        if(_loc6_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr152:
                              §§goto(addr153);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr183);
            }
            return this.§^c§[_loc2_];
         }
         §§goto(addr51);
      }
      
      public function §]!`§() : int
      {
         return this.§`"2§;
      }
      
      public function §"]§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(b2Settings);
            if(_loc3_ || this)
            {
               §§push(0);
               if(_loc3_ || _loc2_)
               {
                  §§push(param1);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              addr70:
                              §§pop();
                              §§push(param1 < this.§`"2§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr86);
                     }
                  }
               }
            }
            §§goto(addr70);
         }
         addr86:
         return this.§^c§[param1];
      }
   }
}
