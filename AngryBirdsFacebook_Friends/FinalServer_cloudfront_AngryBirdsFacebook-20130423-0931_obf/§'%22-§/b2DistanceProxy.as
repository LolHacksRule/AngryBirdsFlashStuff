package §'"-§
{
   import §!"3§.*;
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §["8§:Vector.<b2Vec2>;
      
      public var §=!4§:int;
      
      public var §0!_§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         §§push(param1.§>!f§());
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(b2Shape.§ "&§);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr196:
                              loop8:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1 as b2CircleShape;
                                    if(_loc6_)
                                    {
                                       this.§["8§ = new Vector.<b2Vec2>(1,true);
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       this.§["8§[0] = _loc2_.§2"9§;
                                       loop4:
                                       while(true)
                                       {
                                          addr49:
                                          while(true)
                                          {
                                             this.§=!4§ = 1;
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    break;
                                 case 1:
                                    _loc3_ = param1 as b2PolygonShape;
                                    if(!_loc5_)
                                    {
                                       this.§["8§ = _loc3_.§["8§;
                                       while(true)
                                       {
                                          this.§=!4§ = _loc3_.§4C§;
                                       }
                                       addr133:
                                    }
                                    while(true)
                                    {
                                       addr115:
                                       while(true)
                                       {
                                          this.§0!_§ = _loc3_.§0!_§;
                                          addr120:
                                          while(!_loc6_)
                                          {
                                             §§goto(addr133);
                                          }
                                          break loop8;
                                       }
                                    }
                                    break;
                                    addr128:
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(!_loc5_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr128);
                                    }
                                    §§goto(addr120);
                              }
                              return;
                              addr195:
                           }
                        }
                        else
                        {
                           addr187:
                           §§push(1);
                           if(!_loc6_)
                           {
                           }
                        }
                        §§goto(addr195);
                     }
                     else
                     {
                        §§push(b2Shape.§8x§);
                        if(_loc6_)
                        {
                           addr186:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr187);
                           }
                           else
                           {
                              §§goto(addr195);
                              §§push(2);
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr186);
               }
               §§goto(addr195);
            }
            §§goto(addr187);
         }
         §§goto(addr196);
      }
      
      public function §;"L§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§["8§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§["8§[0].y * param1.y);
            if(!_loc6_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ || this)
               {
                  if(!(_loc6_ && this))
                  {
                     if(§§pop() >= this.§=!4§)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc2_);
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 addr183:
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr184:
                                    addr113:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(_loc7_ || param1)
                                       {
                                          addr98:
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr177:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      addr176:
                                                   }
                                                   while(§§pop() > §§pop())
                                                   {
                                                      continue loop4;
                                                      §§goto(addr177);
                                                   }
                                                   addr76:
                                                   _loc4_++;
                                                   continue loop0;
                                                }
                                                §§goto(addr177);
                                                §§goto(addr98);
                                             }
                                             addr165:
                                          }
                                          §§goto(addr177);
                                       }
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          break;
                                       }
                                       §§goto(addr177);
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 addr183:
                              }
                              §§goto(addr183);
                           }
                        }
                        while(true)
                        {
                           if(!(_loc7_ || param1))
                           {
                              §§goto(addr184);
                           }
                           §§goto(addr76);
                           §§goto(addr113);
                        }
                     }
                     else
                     {
                        §§push(this.§["8§[_loc4_].x * param1.x);
                        if(_loc7_ || param1)
                        {
                           §§push(this.§["8§[_loc4_].y * param1.y);
                           if(_loc7_ || _loc2_)
                           {
                              §§goto(addr165);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr183);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §+!v§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§["8§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§["8§[0].y * param1.y);
            if(!_loc6_)
            {
               addr42:
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
                  if(!_loc6_)
                  {
                     if(§§pop() >= this.§=!4§)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!(_loc7_ || _loc2_))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr168:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr169:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr170:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   addr102:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr156:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_ || this)
                                                      {
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                         }
                                                         addr165:
                                                      }
                                                      addr166:
                                                      while(§§pop() > §§pop())
                                                      {
                                                         continue loop2;
                                                      }
                                                      addr82:
                                                      _loc4_++;
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr102);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr170);
                        }
                     }
                     else
                     {
                        §§push(this.§["8§[_loc4_].x * param1.x);
                        if(_loc7_)
                        {
                           §§push(this.§["8§[_loc4_].y * param1.y);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_ || param1)
                              {
                                 §§goto(addr156);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr168);
               }
               §§goto(addr169);
            }
            return this.§["8§[_loc2_];
         }
         §§goto(addr42);
      }
      
      public function §"R§() : int
      {
         return this.§=!4§;
      }
      
      public function §,"-§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(b2Settings);
            if(_loc2_)
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || param1)
                           {
                              addr74:
                              §§pop();
                              §§push(param1 < this.§=!4§);
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
         return this.§["8§[param1];
      }
   }
}
