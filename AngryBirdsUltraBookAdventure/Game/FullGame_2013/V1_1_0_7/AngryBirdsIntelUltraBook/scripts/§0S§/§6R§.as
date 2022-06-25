package §0S§
{
   import §&H§.b2Vec2;
   import §1!B§.§<m§;
   import §3b§.b2CircleShape;
   import §3b§.b2PolygonShape;
   import §3b§.b2Shape;
   
   public class §6R§
   {
      
      public static const §6m§:int = 0;
      
      public static const §,R§:int = 1;
      
      public static const §[!a§:int = 2;
      
      public static const §&!'§:int = 3;
      
      public static const §9!Z§:int = 4;
      
      public static const §#""§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6m§ = 0;
            while(true)
            {
               §,R§ = 1;
               loop1:
               while(!(_loc1_ && §6R§))
               {
                  §[!a§ = 2;
                  while(true)
                  {
                     §&!'§ = 3;
                     while(_loc2_ || _loc1_)
                     {
                        §9!Z§ = 4;
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              §#""§ = 5;
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public var mName:String;
      
      public var §0>§:int;
      
      public var §3!8§:Number;
      
      public var §0!Q§:Number;
      
      public var §8!M§:Number;
      
      public var §[!u§:Array = null;
      
      public function §6R§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               for(; !_loc7_; if(!(_loc6_ || this))
               {
                  continue;
               },§§goto(addr70))
               {
                  this.§0>§ = this.§`!1§(param2);
                  loop2:
                  while(true)
                  {
                     this.§3!8§ = param3;
                     loop3:
                     do
                     {
                        this.§0!Q§ = param4;
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                           addr70:
                           this.§8!M§ = param5;
                           if(_loc6_ || param2)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(_loc7_);
                     
                  }
               }
            }
         }
      }
      
      public function §%!>§() : int
      {
         return this.§0>§;
      }
      
      public function §]k§() : Number
      {
         return this.§3!8§;
      }
      
      public function §%"#§() : int
      {
         return this.§0!Q§;
      }
      
      private function §`!1§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(param1);
                        while(_loc2_)
                        {
                           §§push("CIRCLE");
                           loop4:
                           while(true)
                           {
                              if(§§pop() == §§pop())
                              {
                                 addr263:
                                 return §9!Z§;
                              }
                              addr228:
                              while(true)
                              {
                                 §§push(param1);
                                 addr230:
                                 while(true)
                                 {
                                    §§push("POLYGON");
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr268);
      }
      
      public function §!!>§() : Array
      {
         return this.§[!u§;
      }
      
      public function §6!O§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!u§ = param1;
         }
      }
      
      public function §+!k§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§4!6§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc5_ && this))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§3!8§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§0!Q§ = §§pop();
            }
            while(_loc5_ && _loc3_);
            
         }
      }
      
      public function §4!6§() : Array
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
         for each(_loc6_ in this.§[!u§)
         {
            if(_loc10_ || _loc2_)
            {
               §§push(_loc5_);
               if(_loc10_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc10_ || _loc1_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_ || _loc1_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_ || this)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(_loc9_);
                                       if(!_loc11_)
                                       {
                                          addr103:
                                          if(_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   addr117:
                                                   §§push(_loc6_.y);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc11_)
                                                            {
                                                               addr135:
                                                               _loc4_ = §§pop();
                                                               addr137:
                                                               §§push(_loc9_);
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc10_ || _loc1_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        addr324:
                                                                        _loc5_ = false;
                                                                        addr171:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(!_loc11_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              addr222:
                                                                           }
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc11_ && _loc1_))
                                                                              {
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               addr258:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr259:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     addr260:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr256:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.y);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         addr265:
                                                                                                         loop9:
                                                                                                         while(!(_loc11_ && _loc1_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() <= §§pop())
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc10_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && _loc1_))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr292:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr295:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr319:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                    }
                                                                                                                                    addr319:
                                                                                                                                 }
                                                                                                                                 addr320:
                                                                                                                                 while(_loc10_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr291:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              break loop9;
                                                                                                                           }
                                                                                                                           addr312:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr292);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr319);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr318);
                                                                                                                  }
                                                                                                                  addr316:
                                                                                                               }
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                      }
                                                                                                      addr255:
                                                                                                   }
                                                                                                   §§goto(addr258);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr246:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr265);
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr258);
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr273);
                                                                        }
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr246);
                                       }
                                    }
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr272);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr117);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr312);
               }
               §§goto(addr324);
            }
            §§goto(addr171);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §'!k§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§0>§);
         if(_loc10_)
         {
            var _loc7_:* = §§pop();
            if(!_loc9_)
            {
               §§push(§9!Z§);
               if(_loc10_ || this)
               {
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!(_loc9_ && param1))
                           {
                              addr188:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = new b2CircleShape();
                                    if(!_loc9_)
                                    {
                                       §§push(_loc2_);
                                       §§push(this.§3!8§);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§8&§(§§pop());
                                       if(!_loc9_)
                                       {
                                          return _loc2_;
                                       }
                                    }
                                 case 1:
                                    _loc3_ = this.§!!>§();
                                    (_loc4_ = new b2PolygonShape()).§<,§(_loc3_,_loc3_.length);
                                    _loc5_ = _loc4_.§1!l§();
                                    if(!_loc9_)
                                    {
                                       _loc7_ = 0;
                                       if(_loc10_)
                                       {
                                          for each(_loc6_ in _loc5_)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc6_.x);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().x = §§pop();
                                             if(!_loc9_)
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc6_.y);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().y = §§pop();
                                             }
                                          }
                                       }
                                       if(_loc10_ || _loc3_)
                                       {
                                          return _loc4_;
                                       }
                                       break;
                                    }
                              }
                              return null;
                              addr187:
                           }
                        }
                        else
                        {
                           addr179:
                           §§push(1);
                           if(!_loc10_)
                           {
                           }
                        }
                        §§goto(addr187);
                     }
                     else
                     {
                        §§push(§#""§);
                        if(!(_loc9_ && this))
                        {
                           addr178:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr179);
                           }
                           else
                           {
                              §§goto(addr187);
                              §§push(2);
                           }
                           §§goto(addr187);
                        }
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr178);
               }
               §§goto(addr187);
            }
            §§goto(addr179);
         }
         §§goto(addr188);
      }
   }
}
