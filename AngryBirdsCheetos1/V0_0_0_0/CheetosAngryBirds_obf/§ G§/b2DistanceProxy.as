package § G§
{
   import §-!C§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §3!S§:Vector.<b2Vec2>;
      
      public var §[B§:int;
      
      public var §=!W§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
         §§push(param1.§0!$§());
         if(_loc6_ || _loc3_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || _loc3_)
            {
               §§push(b2Shape.§9!T§);
               if(_loc6_ || this)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           addr167:
                           §§push(0);
                           if(_loc6_ || this)
                           {
                              addr206:
                              loop6:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1 as b2CircleShape;
                                    if(!_loc5_)
                                    {
                                       this.§3!S§ = new Vector.<b2Vec2>(1,true);
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       this.§3!S§[0] = _loc2_.§?8§;
                                       while(true)
                                       {
                                          addr56:
                                          while(true)
                                          {
                                             this.§[B§ = 1;
                                             do
                                             {
                                                this.§=!W§ = _loc2_.§=!W§;
                                             }
                                             while(_loc5_ && _loc2_);
                                             
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    break;
                                 case 1:
                                    _loc3_ = param1 as b2PolygonShape;
                                    if(_loc6_)
                                    {
                                       this.§3!S§ = _loc3_.§3!S§;
                                       loop5:
                                       while(true)
                                       {
                                          this.§[B§ = _loc3_.§^L§;
                                          addr126:
                                          addr115:
                                          while(!_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          this.§=!W§ = _loc3_.§=!W§;
                                          break loop6;
                                       }
                                    }
                                    break;
                                 default:
                                    b2Settings.b2Assert(false);
                                    if(!_loc5_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(true)
                                          {
                                             §§goto(addr207);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr126);
                                       }
                                       §§goto(addr115);
                                    }
                              }
                              addr205:
                              §§goto(addr207);
                              addr205:
                           }
                           else
                           {
                              addr185:
                              if(§§pop() !== _loc4_)
                              {
                                 §§goto(addr205);
                                 §§push(2);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr205);
                        }
                        §§push(1);
                        if(_loc6_)
                        {
                           addr200:
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§;!5§);
                        if(_loc6_ || this)
                        {
                           §§goto(addr185);
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr185);
               }
               §§goto(addr200);
            }
            §§goto(addr167);
         }
         §§goto(addr206);
      }
      
      public function §"9§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§3!S§[0].x * param1.x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() + this.§3!S§[0].y * param1.y);
            if(!(_loc7_ && param1))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc7_ && param1))
               {
                  if(§§pop() >= this.§[B§)
                  {
                     if(_loc6_)
                     {
                        addr71:
                        §§push(_loc2_);
                        if(_loc6_)
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
                           addr178:
                           addr78:
                           loop2:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       addr119:
                                       §§push(Number(§§pop()));
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             _loc3_ = §§pop();
                                             addr134:
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr157:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr171:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                   }
                                                   addr170:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      break loop2;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr176);
                                                   §§push(_loc4_);
                                                }
                                             }
                                          }
                                          addr156:
                                       }
                                       §§goto(addr171);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§3!S§[_loc4_].y * param1.y);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr156);
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                       addr145:
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr119);
                           }
                           while(true)
                           {
                              _loc4_++;
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr134);
                        §§goto(addr78);
                     }
                     continue;
                  }
                  §§push(this.§3!S§[_loc4_].x * param1.x);
                  §§goto(addr145);
               }
               §§goto(addr71);
            }
            return §§pop();
         }
         §§goto(addr51);
      }
      
      public function §0-§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§3!S§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§3!S§[0].y * param1.y);
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
               if(!(_loc6_ && param1))
               {
                  if(§§pop() >= this.§[B§)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc7_ || _loc3_)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && this))
                              {
                                 addr189:
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr114:
                                             §§push(Number(§§pop()));
                                             if(_loc7_ || param1)
                                             {
                                                break;
                                             }
                                             addr168:
                                             addr168:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                             }
                                             addr168:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   _loc5_ = §§pop();
                                                   §§goto(addr168);
                                                }
                                             }
                                             addr164:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                continue loop4;
                                             }
                                             addr97:
                                             while(true)
                                             {
                                                _loc4_++;
                                                addr99:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr168);
                                          }
                                          addr169:
                                       }
                                       §§goto(addr114);
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 addr189:
                              }
                              §§goto(addr189);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr99);
                  }
                  else
                  {
                     §§push(this.§3!S§[_loc4_].x * param1.x);
                     if(!(_loc6_ && this))
                     {
                        §§push(this.§3!S§[_loc4_].y * param1.y);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_ || _loc3_)
                           {
                              §§goto(addr164);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr169);
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr189);
            }
            return this.§3!S§[_loc2_];
         }
         §§goto(addr42);
      }
      
      public function §>!2§() : int
      {
         return this.§[B§;
      }
      
      public function §]!A§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(b2Settings);
            if(!(_loc3_ && this))
            {
               §§push(0);
               if(_loc2_ || this)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(_loc2_ || param1)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              addr73:
                              §§push(param1 < this.§[B§);
                           }
                        }
                     }
                     §§pop().b2Assert(§§pop());
                     §§goto(addr75);
                  }
               }
            }
            §§goto(addr73);
         }
         addr75:
         return this.§3!S§[param1];
      }
   }
}
