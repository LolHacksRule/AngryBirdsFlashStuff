package §3"5§
{
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §=#S§:Vector.<b2Vec2>;
      
      public var §@"K§:int;
      
      public var § "^§:Number;
      
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         §§push(param1.§8! §());
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc2_)
            {
               §§push(b2Shape.§;!T§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           addr172:
                           §§push(0);
                           if(!(_loc5_ && _loc2_))
                           {
                              addr180:
                           }
                           else
                           {
                              addr205:
                           }
                        }
                        else
                        {
                           addr187:
                           §§push(1);
                           if(_loc6_ || this)
                           {
                              §§goto(addr205);
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§ !7§);
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
                     §§goto(addr211);
                  }
                  §§goto(addr186);
               }
               §§goto(addr180);
            }
            §§goto(addr172);
         }
         addr211:
         loop7:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc6_ || param1)
               {
                  this.§=#S§ = new Vector.<b2Vec2>(1,true);
                  while(true)
                  {
                     this.§=#S§[0] = _loc2_.§&!i§;
                     loop2:
                     while(_loc6_ || param1)
                     {
                        while(true)
                        {
                           loop4:
                           do
                           {
                              this.§@"K§ = 1;
                              while(!_loc5_)
                              {
                                 this.§ "^§ = _loc2_.§ "^§;
                                 if(!(_loc5_ && param1))
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           while(false);
                           
                           break loop7;
                        }
                     }
                  }
               }
               §§goto(addr73);
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(_loc6_ || param1)
               {
                  this.§=#S§ = _loc3_.§=#S§;
               }
               loop6:
               while(true)
               {
                  this.§@"K§ = _loc3_.§;!9§;
                  addr131:
                  addr120:
                  addr125:
                  while(_loc5_ && param1)
                  {
                     continue loop6;
                  }
                  this.§ "^§ = _loc3_.§ "^§;
                  break loop7;
               }
               break;
            default:
               b2Settings.b2Assert(false);
               if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr131);
                  }
                  §§goto(addr120);
               }
               §§goto(addr125);
         }
      }
      
      public function §5!y§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§=#S§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§=#S§[0].y * param1.y);
            if(!_loc7_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc7_ && _loc2_))
               {
                  if(§§pop() >= this.§@"K§)
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!(_loc7_ && this))
                        {
                           addr90:
                           §§push(_loc2_);
                           if(_loc6_ || param1)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                              }
                              addr176:
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc7_ && _loc3_))
                           {
                              addr117:
                              if(_loc6_ || param1)
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       addr173:
                                       while(true)
                                       {
                                          §§goto(addr176);
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr174:
                                          while(§§pop() > §§pop())
                                          {
                                             §§goto(addr175);
                                             continue loop2;
                                          }
                                       }
                                       addr175:
                                       addr173:
                                    }
                                    _loc4_++;
                                    continue loop0;
                                 }
                                 addr125:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr173);
                                          }
                                          §§goto(addr174);
                                       }
                                       addr159:
                                    }
                                    §§goto(addr117);
                                 }
                                 addr156:
                              }
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     §§push(this.§=#S§[_loc4_].x * param1.x);
                     if(!_loc7_)
                     {
                        §§push(this.§=#S§[_loc4_].y * param1.y);
                        if(_loc6_ || param1)
                        {
                           §§goto(addr156);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr159);
               }
               §§goto(addr90);
            }
            return §§pop();
         }
         §§goto(addr41);
      }
      
      public function § "7§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§=#S§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§=#S§[0].y * param1.y);
            if(!_loc7_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(!_loc7_)
               {
                  if(§§pop() >= this.§@"K§)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              _loc4_++;
                           }
                           addr124:
                           _loc3_ = §§pop();
                        }
                     }
                     while(true)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!_loc7_)
                              {
                                 addr168:
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr168:
                              }
                              §§goto(addr168);
                           }
                           addr164:
                        }
                        loop5:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!_loc7_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr124);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§=#S§[_loc4_].y * param1.y);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr148:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                      addr162:
                                                   }
                                                }
                                             }
                                             addr147:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                break loop5;
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                       addr136:
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr69);
                     }
                     continue;
                  }
                  §§push(this.§=#S§[_loc4_].x * param1.x);
                  §§goto(addr136);
               }
               §§goto(addr168);
            }
            return this.§=#S§[_loc2_];
         }
         §§goto(addr41);
      }
      
      public function §4#_§() : int
      {
         return this.§@"K§;
      }
      
      public function §-",§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(b2Settings);
            if(!_loc2_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              addr69:
                              §§push(param1 < this.§@"K§);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr69);
         }
         addr71:
         return this.§=#S§[param1];
      }
   }
}
