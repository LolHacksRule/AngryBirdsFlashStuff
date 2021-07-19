package §_-qg§
{
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
       
      
      public var §_-Ui§:Vector.<b2Vec2>;
      
      public var §_-01§:int;
      
      public var §_-Q2§:Number;
      
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
         §§push(param1.§_-ww§());
         if(!(_loc5_ && _loc3_))
         {
            var _loc4_:* = §§pop();
            if(_loc6_ || param1)
            {
               §§push(b2Shape.§_-n7§);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           addr148:
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr173:
                           }
                        }
                        else
                        {
                           addr163:
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§goto(addr173);
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Shape.§_-6T§);
                        if(!(_loc5_ && param1))
                        {
                           addr162:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr163);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr162);
               }
               §§goto(addr173);
            }
            §§goto(addr148);
         }
         addr179:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1 as b2CircleShape;
               if(_loc6_)
               {
                  this.§_-Ui§ = new Vector.<b2Vec2>(1,true);
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§_-Ui§[0] = _loc2_.§_-Ga§;
                     if(!_loc5_)
                     {
                        this.§_-01§ = 1;
                        if(_loc6_ || _loc2_)
                        {
                        }
                        addr66:
                        break;
                     }
                     §§goto(addr66);
                  }
                  this.§_-Q2§ = _loc2_.§_-Q2§;
               }
               §§goto(addr66);
            case 1:
               _loc3_ = param1 as b2PolygonShape;
               if(_loc6_ || this)
               {
                  this.§_-Ui§ = _loc3_.§_-Ui§;
                  if(_loc6_)
                  {
                     addr93:
                     this.§_-01§ = _loc3_.§_-Wz§;
                     if(_loc6_ || _loc3_)
                     {
                        this.§_-Q2§ = _loc3_.§_-Q2§;
                        if(_loc6_ || param1)
                        {
                           break;
                        }
                     }
                  }
                  addr120:
                  break;
               }
               §§goto(addr93);
            default:
               b2Settings.b2Assert(false);
               §§goto(addr120);
         }
      }
      
      public function §_-xy§(param1:b2Vec2) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-Ui§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§_-Ui§[0].y * param1.y);
            if(_loc7_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() < this.§_-01§)
                  {
                     §§push(this.§_-Ui§[_loc4_].x * param1.x);
                     if(_loc7_)
                     {
                        §§push(this.§_-Ui§[_loc4_].y * param1.y);
                        if(_loc7_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc6_)
                              {
                                 addr83:
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    addr86:
                                    _loc5_ = §§pop();
                                    if(_loc7_)
                                    {
                                       addr90:
                                       addr89:
                                       if(§§pop() <= _loc3_)
                                       {
                                          _loc4_++;
                                          if(!_loc7_)
                                          {
                                             addr130:
                                             §§push(_loc2_);
                                          }
                                       }
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc7_ || _loc2_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   addr111:
                                                   _loc3_ = Number(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr111);
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       continue;
                                       continue;
                                       break;
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr130);
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr39);
      }
      
      public function §_-cH§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-Ui§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§_-Ui§[0].y * param1.y);
            if(_loc6_ || _loc2_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               while(§§pop() < this.§_-01§)
               {
                  §§push(this.§_-Ui§[_loc4_].x * param1.x);
                  if(!_loc7_)
                  {
                     §§push(this.§_-Ui§[_loc4_].y * param1.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_ || this)
                           {
                           }
                           addr125:
                           _loc3_ = Number(§§pop());
                           addr124:
                           if(_loc7_)
                           {
                              break;
                           }
                           addr128:
                           _loc4_++;
                           if(!(_loc6_ || param1))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           _loc5_ = §§pop();
                           if(!_loc7_)
                           {
                              addr94:
                              if(§§pop() > _loc3_)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(_loc4_);
                                    if(!_loc7_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§push(_loc5_);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr124);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr125);
               }
               return this.§_-Ui§[_loc2_];
            }
         }
         §§goto(addr43);
      }
      
      public function §_-m9§() : int
      {
         return this.§_-01§;
      }
      
      public function §_-Su§(param1:int) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(b2Settings);
            if(!(_loc3_ && param1))
            {
               §§push(0);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() <= §§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr53:
                              §§pop();
                              §§push(param1 < this.§_-01§);
                           }
                        }
                        §§pop().b2Assert(§§pop());
                        §§goto(addr66);
                     }
                  }
               }
            }
            §§goto(addr53);
         }
         addr66:
         return this.§_-Ui§[param1];
      }
   }
}
