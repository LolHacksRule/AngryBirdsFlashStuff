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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6m§ = 0;
         }
         while(true)
         {
            §,R§ = 1;
            loop1:
            while(_loc1_)
            {
               §[!a§ = 2;
               do
               {
                  §&!'§ = 3;
                  do
                  {
                     §9!Z§ = 4;
                     while(_loc1_ || _loc1_)
                     {
                        §#""§ = 5;
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr44);
                     }
                     continue loop1;
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_ && §6R§);
               
               return;
            }
         }
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
         if(_loc6_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§0>§ = this.§`!1§(param2);
                  continue loop0;
                  loop5:
                  while(_loc6_ || param2)
                  {
                     this.§8!M§ = param5;
                     if(_loc6_ || param3)
                     {
                        addr49:
                        if(_loc6_ || param3)
                        {
                           return;
                        }
                        addr83:
                        while(_loc6_)
                        {
                           this.§0!Q§ = param4;
                           continue loop5;
                           §§goto(addr49);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§3!8§ = param3;
            §§goto(addr83);
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
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               addr217:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     addr210:
                     while(true)
                     {
                        §§push("CIRCLE");
                        addr211:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              addr213:
                              return §9!Z§;
                              addr212:
                           }
                           else
                           {
                              addr170:
                           }
                           while(true)
                           {
                              §§push(param1);
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               addr218:
               return §&!'§;
            }
         }
         §§goto(addr220);
      }
      
      public function §!!>§() : Array
      {
         return this.§[!u§;
      }
      
      public function §6!O§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
         if(_loc4_ || this)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!_loc5_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§3!8§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§0!Q§ = §§pop();
         }
         while(!(_loc4_ || _loc1_));
         
      }
      
      public function §4!6§() : Array
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
         for each(_loc6_ in this.§[!u§)
         {
            if(_loc11_ || _loc2_)
            {
               §§push(_loc5_);
               if(_loc11_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        §§push(_loc6_.x);
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                           if(!(_loc10_ && _loc3_))
                           {
                              var _loc9_:* = §§pop();
                              if(_loc11_ || _loc1_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc11_ || this)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(_loc9_);
                                       if(!(_loc10_ && this))
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            addr143:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc10_ && _loc1_))
                                                            {
                                                               addr151:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  addr174:
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr340:
                                                                     _loc5_ = false;
                                                                  }
                                                                  else
                                                                  {
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr219:
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc10_ && _loc1_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr234:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     loop3:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        addr254:
                                                                                                                        loop4:
                                                                                                                        while(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc11_ || this)
                                                                                                                              {
                                                                                                                                 if(!(_loc11_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   addr286:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr314:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               addr315:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr313:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr337:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                            addr338:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr295:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  addr298:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr299:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop3;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr337:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr311:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr314);
                                                                                                                                          }
                                                                                                                                          addr276:
                                                                                                                                       }
                                                                                                                                       while(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(_loc10_ && this)
                                                                                                                                          {
                                                                                                                                             break loop7;
                                                                                                                                             addr341:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr311);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr338);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr299);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    break loop4;
                                                                                                                                 }
                                                                                                                                 §§goto(addr338);
                                                                                                                              }
                                                                                                                              §§goto(addr295);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr337);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr242:
                                                                                                            }
                                                                                                            §§goto(addr298);
                                                                                                         }
                                                                                                      }
                                                                                                      addr233:
                                                                                                   }
                                                                                                   §§goto(addr254);
                                                                                                }
                                                                                                §§goto(addr286);
                                                                                             }
                                                                                             §§goto(addr234);
                                                                                          }
                                                                                          §§goto(addr272);
                                                                                       }
                                                                                       §§goto(addr242);
                                                                                    }
                                                                                    §§goto(addr257);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr330:
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              §§goto(addr276);
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr294:
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§goto(addr294);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr151);
                                 }
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr233);
                     }
                     §§goto(addr309);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr330);
               }
               §§goto(addr340);
            }
            §§goto(addr249);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §'!k§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§0>§);
         if(!(_loc10_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || param1)
            {
               §§push(§9!Z§);
               if(_loc9_ || this)
               {
                  §§push(_loc7_);
                  if(!(_loc10_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || param1)
                        {
                           addr209:
                           §§push(0);
                           if(_loc10_)
                           {
                           }
                        }
                        else
                        {
                           addr223:
                           §§push(1);
                           if(!_loc10_)
                           {
                              addr226:
                           }
                        }
                        addr232:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = new b2CircleShape();
                              if(!(_loc10_ && _loc3_))
                              {
                                 §§push(_loc2_);
                                 §§push(this.§3!8§);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§8&§(§§pop());
                                 if(_loc10_)
                                 {
                                    §§goto(addr61);
                                 }
                              }
                              return _loc2_;
                           case 1:
                              addr61:
                              _loc3_ = this.§!!>§();
                              (_loc4_ = new b2PolygonShape()).§<,§(_loc3_,_loc3_.length);
                              _loc5_ = _loc4_.§1!l§();
                              if(!(_loc10_ && param1))
                              {
                                 _loc7_ = 0;
                                 if(!_loc10_)
                                 {
                                    for each(_loc6_ in _loc5_)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.x);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().x = §§pop();
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(_loc6_);
                                          §§push(_loc6_.y);
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                    }
                                 }
                                 if(_loc10_ && param1)
                                 {
                                    break;
                                 }
                              }
                              return _loc4_;
                        }
                        return null;
                        addr231:
                     }
                     else
                     {
                        §§push(§#""§);
                        if(_loc9_ || _loc3_)
                        {
                           §§push(_loc7_);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr226);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr223);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr231);
               }
               §§goto(addr226);
            }
            §§goto(addr209);
         }
         §§goto(addr232);
      }
   }
}
