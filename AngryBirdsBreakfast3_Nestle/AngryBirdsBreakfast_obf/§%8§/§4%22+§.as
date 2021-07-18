package §%8§
{
   import §=!!§.b2PolygonShape;
   import §=!!§.b2Shape;
   import §@!E§.b2Vec2;
   
   public class §4"+§ extends §[_§
   {
       
      
      private var §7T§:Vector.<b2Vec2>;
      
      public function §4"+§(param1:Vector.<b2Vec2>, param2:String = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§7T§ = param1;
         }
         var _loc3_:Array = this.§@g§();
         var _loc4_:b2Vec2 = _loc3_[0] as b2Vec2;
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc3_[1] as b2Vec2).x);
         if(_loc8_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc9_)
            {
               addr58:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc8_ || this)
               {
                  addr79:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc8_)
               {
                  super(_loc6_,_loc7_,param2);
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr58);
      }
      
      public function get §1t§() : Vector.<b2Vec2>
      {
         return this.§7T§;
      }
      
      public function §@g§() : Array
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
         for each(_loc6_ in this.§7T§)
         {
            if(_loc11_ || this)
            {
               §§push(_loc5_);
               if(!(_loc10_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(_loc11_ || this)
                        {
                           §§push(§§pop());
                           if(_loc11_ || this)
                           {
                              var _loc9_:* = §§pop();
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_ || _loc1_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc10_)
                                    {
                                       §§push(_loc9_);
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          addr109:
                                          if(!_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc11_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc10_ && _loc1_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ && _loc2_)
                                                            {
                                                            }
                                                            addr148:
                                                            if(_loc11_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc11_)
                                                                  {
                                                                     addr325:
                                                                     _loc5_ = false;
                                                                     addr162:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(_loc11_)
                                                                           {
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc11_ || this))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr221:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            addr222:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               loop9:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc11_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc11_ || this)
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && this))
                                                                                                                                 {
                                                                                                                                    addr257:
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr308:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          loop21:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(_loc11_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         addr321:
                                                                                                                                                      }
                                                                                                                                                      addr322:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         addr323:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr312:
                                                                                                                                                }
                                                                                                                                                §§goto(addr323);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(_loc10_ && this)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                      addr287:
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop9;
                                                                                                                                                            }
                                                                                                                                                            if(_loc11_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr302:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     addr303:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr303);
                                                                                                                                                         }
                                                                                                                                                         break loop2;
                                                                                                                                                         addr326:
                                                                                                                                                         addr289:
                                                                                                                                                      }
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                §§goto(addr302);
                                                                                                                                             }
                                                                                                                                             §§goto(addr322);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr257);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    addr267:
                                                                                                                                    addr259:
                                                                                                                                 }
                                                                                                                                 §§goto(addr323);
                                                                                                                              }
                                                                                                                              §§goto(addr303);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr287);
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                     addr235:
                                                                                                                  }
                                                                                                                  §§goto(addr267);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr221:
                                                                                                      }
                                                                                                      §§goto(addr302);
                                                                                                   }
                                                                                                   §§goto(addr259);
                                                                                                }
                                                                                                §§goto(addr257);
                                                                                             }
                                                                                             §§goto(addr221);
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                       }
                                                                                       §§goto(addr222);
                                                                                    }
                                                                                    addr193:
                                                                                 }
                                                                                 §§goto(addr235);
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr221);
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         _loc4_ = §§pop();
                                                         addr147:
                                                         §§goto(addr148);
                                                         §§push(_loc9_);
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr312);
                                             }
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr289);
                        }
                        §§goto(addr321);
                     }
                     §§goto(addr162);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr308);
               }
               §§goto(addr325);
            }
            §§goto(addr303);
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
            _loc2_.§4!n§(this.§7T§);
         }
         for each(_loc3_ in _loc2_.§;!r§())
         {
            if(!(_loc6_ && this))
            {
               §§push(_loc3_);
               §§push(_loc3_.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * param1);
               }
               §§pop().x = §§pop();
               if(!(_loc7_ || _loc2_))
               {
                  continue;
               }
            }
            §§push(_loc3_);
            §§push(_loc3_.y);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() * param1);
            }
            §§pop().y = §§pop();
         }
         return _loc2_;
      }
   }
}
