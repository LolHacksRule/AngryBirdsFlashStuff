package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §0!k§:Vector.<b2Vec2>;
      
      public var §;!4§:int;
      
      public var § !c§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         §§push(param1.§ 5§());
         if(!_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || param1)
            {
               §§push(b2Shape.§^!6§);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              addr210:
                              loop7:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1 as b2CircleShape;
                                    if(_loc5_ || this)
                                    {
                                       this.§0!k§ = new Vector.<b2Vec2>(1,true);
                                       while(true)
                                       {
                                          this.§0!k§[0] = _loc2_.§`3§;
                                          loop2:
                                          for(; _loc5_ || this; while(true)
                                          {
                                             this.§;!4§ = 1;
                                             do
                                             {
                                                this.§ !c§ = _loc2_.§ !c§;
                                             }
                                             while(_loc6_ && param1);
                                             
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             if(true)
                                             {
                                                break loop7;
                                             }
                                          })
                                          {
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr72);
                                 case 1:
                                    _loc3_ = param1 as b2PolygonShape;
                                    if(_loc5_)
                                    {
                                       this.§0!k§ = _loc3_.§0!k§;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       this.§;!4§ = _loc3_.§]D§;
                                       addr130:
                                       addr119:
                                       addr124:
                                       while(_loc6_ && this)
                                       {
                                          continue loop6;
                                       }
                                       this.§ !c§ = _loc3_.§ !c§;
                                       break loop7;
                                    }
                                    break;
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr130);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr124);
                              }
                              return;
                              addr209:
                           }
                        }
                        else
                        {
                           addr201:
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr209);
                     }
                     else
                     {
                        §§push(b2Shape.§=&§);
                        if(_loc5_)
                        {
                           addr200:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr201);
                           }
                           else
                           {
                              §§goto(addr209);
                              §§push(2);
                           }
                           §§goto(addr209);
                        }
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr200);
               }
               §§goto(addr209);
            }
            §§goto(addr201);
         }
         §§goto(addr210);
      }
      
      public function §'^§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(!(_loc6_ && param1))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc6_ && _loc2_))
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() >= this.§;!4§)
                     {
                        if(!_loc6_)
                        {
                           §§push(_loc2_);
                           break;
                        }
                        loop8:
                        while(true)
                        {
                           if(_loc7_)
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 continue loop0;
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(!_loc6_)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr115:
                                       if(!(_loc6_ && this))
                                       {
                                          addr123:
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             _loc3_ = §§pop();
                                             while(!(_loc7_ || _loc3_))
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      addr188:
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         continue loop6;
                                                      }
                                                      addr188:
                                                   }
                                                   §§goto(addr188);
                                                }
                                             }
                                             addr126:
                                          }
                                          else
                                          {
                                             addr182:
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr183:
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§goto(addr184);
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             addr182:
                                          }
                                          while(true)
                                          {
                                             _loc4_++;
                                             continue loop8;
                                          }
                                          continue loop0;
                                       }
                                       addr172:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          break loop6;
                                          §§goto(addr115);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr123);
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr182);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr126);
                        }
                     }
                     else
                     {
                        §§push(this.§0!k§[_loc4_].x * param1.x);
                        if(_loc7_)
                        {
                           §§push(this.§0!k§[_loc4_].y * param1.y);
                           if(_loc7_ || _loc2_)
                           {
                              §§goto(addr172);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr183);
                        }
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr188);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr52);
      }
      
      public function §7#§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§0!k§[0].x * param1.x);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() + this.§0!k§[0].y * param1.y);
            if(!(_loc6_ && this))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() >= this.§;!4§)
                  {
                     if(!(_loc6_ && this))
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(_loc7_ || _loc2_)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    addr184:
                                    §§push(int(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                    addr184:
                                 }
                                 §§goto(addr184);
                              }
                              addr180:
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_ || param1)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr133:
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             _loc3_ = §§pop();
                                             addr136:
                                             break;
                                          }
                                          addr157:
                                          while(true)
                                          {
                                             §§push(this.§0!k§[_loc4_].y * param1.y);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr174:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                         addr178:
                                                      }
                                                   }
                                                }
                                                addr173:
                                             }
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   break loop3;
                                                }
                                                §§goto(addr180);
                                             }
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr133);
                           }
                           continue;
                        }
                        §§goto(addr136);
                     }
                     continue;
                  }
                  §§push(this.§0!k§[_loc4_].x * param1.x);
                  §§goto(addr157);
               }
               §§goto(addr184);
            }
            return this.§0!k§[_loc2_];
         }
         §§goto(addr52);
      }
      
      public function §!G§() : int
      {
         return this.§;!4§;
      }
      
      public function §2l§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(!(_loc3_ && param1))
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(param1);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr74:
                              §§pop();
                              §§push(param1 < this.§;!4§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr80);
                     }
                  }
               }
            }
            §§goto(addr74);
         }
         addr80:
         return this.§0!k§[param1];
      }
   }
}
