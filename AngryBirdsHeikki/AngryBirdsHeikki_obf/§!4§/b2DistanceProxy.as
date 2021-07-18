package §!4§
{
   import §6A§.*;
   import §7q§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §+!f§:Vector.<b2Vec2>;
      
      public var §33§:int;
      
      public var §'m§:Number;
      
      public function b2DistanceProxy()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         §§push(param1.§0i§());
         if(_loc6_ || param1)
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(b2Shape.§,!#§);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           addr172:
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr200:
                           }
                        }
                        else
                        {
                           addr182:
                           §§push(1);
                           if(_loc6_ || _loc2_)
                           {
                              §§goto(addr200);
                           }
                        }
                        addr206:
                        loop8:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1 as b2CircleShape;
                              if(_loc6_ || _loc3_)
                              {
                                 this.§+!f§ = new Vector.<b2Vec2>(1,true);
                                 while(true)
                                 {
                                    this.§+!f§[0] = _loc2_.§7]§;
                                    loop4:
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          loop6:
                                          do
                                          {
                                             this.§33§ = 1;
                                             while(!_loc5_)
                                             {
                                                this.§'m§ = _loc2_.§'m§;
                                                if(!_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          while(false);
                                          
                                          break loop8;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr68);
                           case 1:
                              _loc3_ = param1 as b2PolygonShape;
                              if(!_loc5_)
                              {
                                 this.§+!f§ = _loc3_.§+!f§;
                              }
                              this.§33§ = _loc3_.§6!U§;
                              loop1:
                              while(true)
                              {
                                 addr115:
                                 while(true)
                                 {
                                    this.§'m§ = _loc3_.§'m§;
                                    addr120:
                                    while(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    break loop8;
                                 }
                              }
                              break;
                              addr133:
                              addr128:
                           default:
                              b2Settings.b2Assert(false);
                              if(!_loc5_)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr115);
                                 }
                                 else
                                 {
                                    §§goto(addr133);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr120);
                        }
                        return;
                        addr205:
                     }
                     else
                     {
                        §§push(b2Shape.§=!'§);
                        if(!_loc5_)
                        {
                           §§push(_loc4_);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr200);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr182);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr205);
               }
               §§goto(addr200);
            }
            §§goto(addr172);
         }
         §§goto(addr206);
      }
      
      public function §-!1§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§+!f§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§+!f§[0].y * param1.y);
            if(_loc6_ || _loc2_)
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
               if(_loc6_)
               {
                  if(_loc6_ || this)
                  {
                     if(§§pop() >= this.§33§)
                     {
                        if(!(_loc7_ && param1))
                        {
                           if(_loc6_ || _loc3_)
                           {
                              addr90:
                              §§push(_loc2_);
                              if(_loc6_ || _loc2_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr177:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 addr109:
                                 if(_loc6_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr157:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             addr160:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr171:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                }
                                                §§goto(addr160);
                                             }
                                             addr170:
                                          }
                                          while(§§pop() > §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(_loc4_);
                                             while(true)
                                             {
                                                §§goto(addr177);
                                             }
                                          }
                                          addr100:
                                          loop7:
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr102:
                                             while(_loc7_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr109);
                                    }
                                    addr156:
                                 }
                                 §§goto(addr157);
                              }
                              if(_loc6_ || _loc2_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr132);
                                 }
                                 else
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr102);
                     }
                     else
                     {
                        §§push(this.§+!f§[_loc4_].x * param1.x);
                        if(_loc6_)
                        {
                           §§push(this.§+!f§[_loc4_].y * param1.y);
                           if(_loc6_)
                           {
                              §§goto(addr156);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr176);
               }
               §§goto(addr90);
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function §^;§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§+!f§[0].x * param1.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.§+!f§[0].y * param1.y);
            if(_loc6_ || param1)
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
               if(!(_loc7_ && param1))
               {
                  if(_loc6_ || _loc2_)
                  {
                     if(§§pop() >= this.§33§)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              addr101:
                              addr189:
                              while(true)
                              {
                                 _loc4_++;
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr190:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       §§goto(addr101);
                                    }
                                    addr191:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr192:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr193:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr194:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   break;
                                                }
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             _loc3_ = §§pop();
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc7_ && this))
                              {
                                 continue loop0;
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr194);
                        }
                     }
                     else
                     {
                        §§push(this.§+!f§[_loc4_].x * param1.x);
                        if(_loc6_ || this)
                        {
                           §§push(this.§+!f§[_loc4_].y * param1.y);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_ && _loc3_)
                                 {
                                 }
                                 §§goto(addr189);
                              }
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr190);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr192);
               }
               §§goto(addr193);
            }
            return this.§+!f§[_loc2_];
         }
         §§goto(addr46);
      }
      
      public function §7T§() : int
      {
         return this.§33§;
      }
      
      public function §"!Q§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(b2Settings);
            if(!_loc2_)
            {
               §§push(0);
               if(!_loc2_)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(§§pop() <= §§pop());
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              addr55:
                              §§pop();
                              §§push(param1 < this.§33§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr71);
                     }
                  }
               }
            }
            §§goto(addr55);
         }
         addr71:
         return this.§+!f§[param1];
      }
   }
}
