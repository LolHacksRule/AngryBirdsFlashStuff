package §&v§
{
   import §"y§.b2PolygonShape;
   import §"y§.b2Shape;
   import §6Z§.b2Vec2;
   
   public class § !h§ extends §each §
   {
       
      
      private var §;!E§:Vector.<b2Vec2>;
      
      public function § !h§(param1:Vector.<b2Vec2>)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            this.§;!E§ = param1;
         }
         var _loc2_:Array = this.§4j§();
         var _loc3_:b2Vec2 = _loc2_[0] as b2Vec2;
         var _loc4_:b2Vec2;
         §§push((_loc4_ = _loc2_[1] as b2Vec2).x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() - _loc3_.x);
            if(!(_loc7_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc4_.y);
         if(_loc8_)
         {
            §§push(§§pop() - _loc3_.y);
            if(_loc8_)
            {
               addr85:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || this)
            {
               super(_loc5_,_loc6_);
            }
            return;
         }
         §§goto(addr85);
      }
      
      public function get §8!§() : Vector.<b2Vec2>
      {
         return this.§;!E§;
      }
      
      public function §4j§() : Array
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
         for each(_loc6_ in this.§;!E§)
         {
            if(_loc10_ || _loc1_)
            {
               §§push(_loc5_);
               if(_loc10_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(_loc10_ || _loc1_)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              var _loc9_:* = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc11_ && this))
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_ || this)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_ || _loc3_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               addr135:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     addr319:
                                                                     _loc5_ = false;
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(_loc10_)
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc1_))
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(!(_loc11_ && _loc1_))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   loop8:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(!(_loc11_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc10_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.y);
                                                                                                                     addr267:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr268:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           addr269:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && _loc1_))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr157:
                                                                                                                                    loop11:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(!(_loc10_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          addr315:
                                                                                                                                          addr315:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop2:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                addr317:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop4:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      addr280:
                                                                                                                                                      while(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            addr283:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc11_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr303:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                 addr304:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr303:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr303);
                                                                                                                                                                        }
                                                                                                                                                                        addr293:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr304);
                                                                                                                                                                  }
                                                                                                                                                                  addr285:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr310:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        break loop11;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop4;
                                                                                                                                                                  }
                                                                                                                                                                  addr310:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr303);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr276:
                                                                                                                              }
                                                                                                                              addr311:
                                                                                                                              addr320:
                                                                                                                              while(_loc10_)
                                                                                                                              {
                                                                                                                                 §§goto(addr315);
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr265:
                                                                                                               }
                                                                                                               §§goto(addr157);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr309:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            addr309:
                                                                                                         }
                                                                                                         §§goto(addr310);
                                                                                                      }
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr304);
                                                                                             }
                                                                                             §§goto(addr269);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 addr220:
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     addr213:
                                                                  }
                                                                  §§goto(addr320);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                    §§goto(addr135);
                                 }
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr285);
                        }
                        §§goto(addr309);
                     }
                     §§goto(addr213);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr309);
               }
               §§goto(addr319);
            }
            §§goto(addr276);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc2_:b2PolygonShape = new b2PolygonShape();
         if(_loc7_)
         {
            _loc2_.§2!A§(this.§;!E§);
         }
         for each(_loc3_ in _loc2_.§%Y§())
         {
            if(_loc7_)
            {
               §§push(_loc3_);
               §§push(_loc3_.x);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() * param1);
               }
               §§pop().x = §§pop();
               if(_loc6_ && _loc3_)
               {
                  continue;
               }
            }
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!_loc6_)
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         return _loc2_;
      }
   }
}
