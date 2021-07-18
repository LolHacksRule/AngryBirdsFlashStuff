package §"!&§
{
   import §,Z§.b2PolygonShape;
   import §,Z§.b2Shape;
   import §9t§.b2Vec2;
   
   public class §"!Y§ extends set
   {
       
      
      private var §-"5§:Vector.<b2Vec2>;
      
      public function §"!Y§(param1:Vector.<b2Vec2>)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§-"5§ = param1;
         }
         var _loc2_:Array = this.§<f§();
         var _loc3_:b2Vec2 = _loc2_[0] as b2Vec2;
         var _loc4_:b2Vec2;
         §§push((_loc4_ = _loc2_[1] as b2Vec2).x);
         if(_loc8_)
         {
            §§push(§§pop() - _loc3_.x);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_.y);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop() - _loc3_.y);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         if(_loc8_ || _loc2_)
         {
            super(_loc5_,_loc6_);
         }
      }
      
      public function get vertices() : Vector.<b2Vec2>
      {
         return this.§-"5§;
      }
      
      public function §<f§() : Array
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§-"5§)
         {
            if(_loc11_)
            {
               §§push(_loc5_);
               if(_loc11_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                           if(!(_loc10_ && _loc2_))
                           {
                              var _loc9_:* = §§pop();
                              if(_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc10_)
                                       {
                                          addr89:
                                          if(_loc11_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         addr110:
                                                         _loc9_ = §§pop();
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr118:
                                                            §§push(Number(§§pop()));
                                                            if(_loc11_)
                                                            {
                                                               addr121:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc10_ && _loc1_))
                                                               {
                                                                  addr134:
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc10_ && _loc1_))
                                                                  {
                                                                     addr290:
                                                                     _loc5_ = false;
                                                                     addr291:
                                                                     continue;
                                                                     addr291:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           addr234:
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    loop3:
                                                                                    while(_loc11_)
                                                                                    {
                                                                                       §§push(_loc6_.y);
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop5:
                                                                                          while(!_loc10_)
                                                                                          {
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   loop8:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc11_ || _loc1_)
                                                                                                         {
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        if(!(_loc10_ && this))
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(!(_loc10_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc11_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          addr194:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             if(_loc11_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr218:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      addr281:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            while(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  break loop6;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr291);
                                                                                                                                                            addr282:
                                                                                                                                                         }
                                                                                                                                                         addr266:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                            addr269:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               addr270:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr280:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop5;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr194:
                                                                                                                                       }
                                                                                                                                       §§goto(addr269);
                                                                                                                                    }
                                                                                                                                    §§goto(addr194);
                                                                                                                                 }
                                                                                                                                 addr177:
                                                                                                                              }
                                                                                                                              §§goto(addr218);
                                                                                                                           }
                                                                                                                           §§goto(addr281);
                                                                                                                        }
                                                                                                                        §§goto(addr270);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §§goto(addr194);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               break loop3;
                                                                                                            }
                                                                                                            addr143:
                                                                                                         }
                                                                                                         §§goto(addr282);
                                                                                                      }
                                                                                                      addr275:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr250:
                                                                                             }
                                                                                             §§goto(addr286);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr143);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr291);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr121);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr291);
                                             }
                                          }
                                          §§goto(addr234);
                                       }
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr177);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr280);
               }
            }
            §§goto(addr290);
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
            _loc2_.§>;§(this.§-"5§);
         }
         for each(_loc3_ in _loc2_.§`!b§())
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc3_);
               §§push(_loc3_.x);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().x = §§pop();
               if(!_loc7_)
               {
                  continue;
               }
            }
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         return _loc2_;
      }
   }
}
