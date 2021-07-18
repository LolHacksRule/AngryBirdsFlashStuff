package §2"Y§
{
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   import §[R§.b2Vec2;
   
   public class §,!W§ extends §?#^§
   {
       
      
      private var §7"_§:Vector.<b2Vec2>;
      
      public function §,!W§(param1:Vector.<b2Vec2>, param2:String = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§7"_§ = param1;
         }
         var _loc3_:Array = this.§,v§();
         var _loc4_:b2Vec2 = _loc3_[0] as b2Vec2;
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc3_[1] as b2Vec2).x);
         if(_loc8_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc8_)
            {
               addr58:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc8_ || this)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc8_)
               {
                  addr74:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc8_ || _loc3_)
               {
                  super(_loc6_,_loc7_,param2);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr58);
      }
      
      public function get vertices() : Vector.<b2Vec2>
      {
         return this.§7"_§;
      }
      
      public function §,v§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§7"_§)
         {
            if(!(_loc11_ && _loc3_))
            {
               §§push(_loc5_);
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(!(_loc11_ && _loc1_))
                           {
                              var _loc9_:* = §§pop();
                              if(!(_loc11_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_ || _loc3_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc10_ || _loc1_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr103:
                                          if(_loc10_ || _loc1_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_ || _loc2_)
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc10_)
                                                   {
                                                      addr126:
                                                      §§push(§§pop());
                                                      if(!_loc11_)
                                                      {
                                                         addr129:
                                                         _loc9_ = §§pop();
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr145:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(_loc10_ || _loc1_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  addr314:
                                                                  _loc5_ = false;
                                                                  addr315:
                                                                  continue;
                                                                  addr315:
                                                               }
                                                               else
                                                               {
                                                                  loop1:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_.x);
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr294:
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             loop11:
                                                                                             while(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc11_ && _loc1_))
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(_loc11_ && this)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§push(_loc6_.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr263:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               if(!(_loc11_ && this))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                  }
                                                                                                                  addr272:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr262:
                                                                                                      }
                                                                                                      while(_loc10_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr315);
                                                                                                      addr273:
                                                                                                   }
                                                                                                   loop13:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           break loop13;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr311:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                 addr312:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr276:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr279);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr213:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr273);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr230:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr230:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr310);
                                                                                                                        }
                                                                                                                        addr308:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr262);
                                                                                                            }
                                                                                                            §§goto(addr279);
                                                                                                         }
                                                                                                         §§goto(addr263);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc11_ && _loc1_))
                                                                                                      {
                                                                                                         §§goto(addr213);
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            addr307:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr308);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr306:
                                                                                                      }
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             while(§§pop() > §§pop())
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr292:
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr272);
                                          }
                                          §§goto(addr126);
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr279);
                     }
                     §§goto(addr315);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr306);
               }
               §§goto(addr314);
            }
            §§goto(addr230);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc2_:b2PolygonShape = new b2PolygonShape();
         if(_loc7_ || _loc3_)
         {
            _loc2_.§?!7§(this.§7"_§);
         }
         for each(_loc3_ in _loc2_.§!"-§())
         {
            if(_loc7_)
            {
               §§push(_loc3_);
               §§push(_loc3_.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().x = §§pop();
               if(_loc6_ && param1)
               {
                  continue;
               }
            }
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(_loc7_ || param1)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         return _loc2_;
      }
   }
}
