package §72§
{
   import §2!+§.*;
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §#!w§:Vector.<b2Vec2>;
      
      public var §9s§:int;
      
      public var §9!A§:Number;
      
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§2!r§());
         if(_loc5_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               §§push(b2Shape.§=! §);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           addr151:
                           §§push(0);
                           if(!(_loc6_ && _loc2_))
                           {
                              addr169:
                           }
                        }
                        else
                        {
                           addr181:
                           §§push(1);
                           if(_loc5_)
                           {
                              addr184:
                           }
                        }
                        addr190:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(!_loc6_)
                              {
                                 this.§#!w§ = new Vector.<b2Vec2>(1,true);
                                 loop2:
                                 while(true)
                                 {
                                    this.§#!w§[0] = _loc2_.§]x§;
                                    loop3:
                                    while(true)
                                    {
                                       addr46:
                                       while(true)
                                       {
                                          this.§9s§ = 1;
                                          addr50:
                                          while(!_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§9!A§ = _loc2_.§9!A§;
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr46);
                                 }
                                 §§goto(addr50);
                              }
                              break;
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(!_loc6_)
                              {
                                 this.§#!w§ = _loc3_.§#!w§;
                                 loop7:
                                 while(true)
                                 {
                                    this.§9s§ = _loc3_.§,L§;
                                    loop8:
                                    while(true)
                                    {
                                       addr107:
                                       while(true)
                                       {
                                          this.§9!A§ = _loc3_.§9!A§;
                                          addr112:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                              break;
                           default:
                              b2Settings.b2Assert(false);
                              if(_loc5_ || _loc3_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr112);
                        }
                        return;
                        addr189:
                     }
                     else
                     {
                        §§push(b2Shape.§6!t§);
                        if(_loc5_ || param1)
                        {
                           addr180:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr181);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr180);
               }
               §§goto(addr169);
            }
            §§goto(addr151);
         }
         §§goto(addr190);
      }
      
      public function §4!J§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§#!w§[0].x * param1.x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() + this.§#!w§[0].y * param1.y);
            if(!_loc7_)
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
                  if(_loc6_)
                  {
                     if(§§pop() >= this.§9s§)
                     {
                        if(!_loc7_)
                        {
                           addr63:
                           §§push(_loc2_);
                           if(_loc6_ || param1)
                           {
                              break;
                           }
                           loop10:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(!_loc7_)
                                    {
                                       addr112:
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                          _loc3_ = §§pop();
                                          addr173:
                                          loop4:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   _loc4_++;
                                                   addr85:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc6_ || this)
                                                      {
                                                         break loop3;
                                                      }
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr176:
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                                addr73:
                                             }
                                             continue loop9;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr173:
                                       }
                                       else
                                       {
                                          §§goto(addr173);
                                       }
                                    }
                                    else
                                    {
                                       addr169:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr173);
                                          }
                                       }
                                       addr169:
                                    }
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          §§goto(addr73);
                                       }
                                       §§goto(addr175);
                                    }
                                    addr174:
                                 }
                                 §§goto(addr112);
                              }
                           }
                        }
                        §§goto(addr85);
                     }
                     else
                     {
                        §§push(this.§#!w§[_loc4_].x * param1.x);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(this.§#!w§[_loc4_].y * param1.y);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr169);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr174);
                        }
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr176);
               }
               §§goto(addr63);
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
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() + this.§#!w§[0].y * param1.y);
            if(_loc7_ || _loc2_)
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
               if(!_loc6_)
               {
                  if(§§pop() >= this.§9s§)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        break;
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           addr163:
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!(_loc6_ && this))
                              {
                                 addr99:
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          _loc5_ = §§pop();
                                          break loop3;
                                       }
                                       addr164:
                                       addr87:
                                       while(§§pop() > §§pop())
                                       {
                                          if(_loc6_ && param1)
                                          {
                                             continue loop3;
                                          }
                                          §§push(_loc4_);
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr174:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop3;
                                             }
                                          }
                                       }
                                       _loc4_++;
                                       continue loop0;
                                       §§goto(addr99);
                                    }
                                    addr159:
                                 }
                              }
                              if(_loc6_ && _loc2_)
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                              continue loop4;
                           }
                           while(true)
                           {
                              §§goto(addr164);
                           }
                           addr163:
                        }
                        §§goto(addr87);
                     }
                  }
                  else
                  {
                     §§push(this.§#!w§[_loc4_].x * param1.x);
                     if(!_loc6_)
                     {
                        §§push(this.§#!w§[_loc4_].y * param1.y);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              §§goto(addr159);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr163);
               }
               §§goto(addr173);
            }
            §§goto(addr174);
         }
         return this.§#!w§[_loc2_];
      }
      
      public function §6+§() : int
      {
         return this.§9s§;
      }
      
      public function §^>§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(b2Settings);
            if(_loc3_)
            {
               §§push(0);
               if(!(_loc2_ && this))
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              §§pop();
                              addr79:
                              §§push(param1 < this.§9s§);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr81);
                  }
               }
            }
            §§goto(addr79);
         }
         addr81:
         return this.§#!w§[param1];
      }
   }
}
