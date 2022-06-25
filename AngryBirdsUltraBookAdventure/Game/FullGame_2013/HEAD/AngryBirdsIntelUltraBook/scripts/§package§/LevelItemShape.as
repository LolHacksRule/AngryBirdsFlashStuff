package §package§
{
   import §0!3§.b2CircleShape;
   import §0!3§.b2PolygonShape;
   import §0!3§.b2Shape;
   import §<u§.Log;
   import §>!8§.b2Vec2;
   
   public class LevelItemShape
   {
      
      public static const §@!h§:int = 0;
      
      public static const §5b§:int = 1;
      
      public static const §?"§:int = 2;
      
      public static const §7!7§:int = 3;
      
      public static const §1<§:int = 4;
      
      public static const §!!&§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@!h§ = 0;
            while(true)
            {
               §5b§ = 1;
               while(_loc1_ || LevelItemShape)
               {
                  §?"§ = 2;
                  loop2:
                  while(!_loc2_)
                  {
                     §7!7§ = 3;
                     while(true)
                     {
                        §1<§ = 4;
                        do
                        {
                           §!!&§ = 5;
                        }
                        while(!_loc1_);
                        
                        if(!(_loc2_ && LevelItemShape))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public var mName:String;
      
      public var §&! §:int;
      
      public var §,<§:Number;
      
      public var §5,§:Number;
      
      public var §0!H§:Number;
      
      public var §^!M§:Array = null;
      
      public function LevelItemShape(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               for(; _loc7_ || param2; if(_loc6_ && param3)
               {
                  continue;
               },this.§5,§ = param4,do
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  §§goto(addr57);
               }
               while(this.§0!H§ = param5, _loc6_);
               ,return,addr35:)
               {
                  this.§&! § = this.§ !]§(param2);
                  loop2:
                  while(true)
                  {
                     this.§,<§ = param3;
                     addr57:
                     while(true)
                     {
                        if(_loc7_ || param2)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function §1]§() : int
      {
         return this.§&! §;
      }
      
      public function §,?§() : Number
      {
         return this.§,<§;
      }
      
      public function §<!g§() : int
      {
         return this.§5,§;
      }
      
      private function § !]§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               addr255:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     continue loop0;
                  }
               }
               addr258:
               return §7!7§;
            }
         }
         §§goto(addr242);
      }
      
      public function §?!0§() : Array
      {
         return this.§^!M§;
      }
      
      public function § !A§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§^!M§ = param1;
         }
      }
      
      public function §;$§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = this.§7P§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!_loc4_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§,<§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§5,§ = §§pop();
            }
            while(_loc4_);
            
         }
      }
      
      public function §7P§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         §§push(true);
         if(_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in this.§^!M§)
         {
            if(_loc10_)
            {
               §§push(_loc5_);
               if(!(_loc11_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc10_ || _loc3_)
                     {
                        addr67:
                        §§push(_loc6_.x);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc10_ || _loc2_)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc11_)
                                       {
                                          addr101:
                                          if(!_loc11_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc11_ && this))
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            addr130:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || this)
                                                            {
                                                               addr138:
                                                               _loc4_ = §§pop();
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               addr151:
                                                               _loc2_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr335:
                                                                     _loc5_ = Boolean(§§pop());
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               else
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           loop6:
                                                                           for(; _loc10_ || _loc1_; §§push(_loc4_),if(_loc11_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           },if(_loc10_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       if(_loc10_ || _loc1_)
                                                                                       {
                                                                                          if(!(_loc11_ && _loc1_))
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                §§goto(addr218);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          §§goto(addr326);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                              addr180:
                                                                           },§§goto(addr325))
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.y);
                                                                                    addr270:
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop10:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   addr226:
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         addr238:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     addr309:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr218:
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr308:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr324:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     addr325:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              addr328:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr329:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    addr330:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr285:
                                                                                                                                 if(!(_loc11_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    break loop6;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr326:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(!(_loc10_ || this))
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           §§goto(addr285);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr324:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr329);
                                                                                                         }
                                                                                                         addr298:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr155:
                                                                                             }
                                                                                             addr294:
                                                                                             addr336:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                addr296:
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr268:
                                                                              }
                                                                              §§goto(addr155);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr324);
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr325);
                        }
                        §§goto(addr328);
                     }
                     §§goto(addr296);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr324);
               }
               §§goto(addr335);
            }
            §§goto(addr67);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §=p§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§&! §);
         if(_loc10_)
         {
            var _loc7_:* = §§pop();
            if(_loc10_)
            {
               §§push(§1<§);
               if(_loc10_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              addr210:
                              if(§§pop() === _loc7_)
                              {
                                 if(_loc10_)
                                 {
                                    addr214:
                                    §§push(1);
                                    if(_loc10_ || param1)
                                    {
                                       addr222:
                                    }
                                    else
                                    {
                                       addr233:
                                    }
                                 }
                                 else
                                 {
                                    addr225:
                                    §§push(2);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§goto(addr233);
                                    }
                                 }
                              }
                              else if(false)
                              {
                                 §§goto(addr225);
                              }
                              else
                              {
                                 §§push(2);
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr214);
                     }
                     else
                     {
                        §§push(§!!&§);
                        if(_loc10_)
                        {
                           §§goto(addr210);
                        }
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr210);
               }
               §§goto(addr222);
            }
            §§goto(addr225);
         }
         addr236:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc10_ || _loc2_)
               {
                  §§push(_loc2_);
                  §§push(this.§,<§);
                  if(_loc10_ || param1)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§2!Y§(§§pop());
                  if(_loc10_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§?!0§();
               _loc4_ = new b2PolygonShape();
               if(!(_loc9_ && this))
               {
                  _loc4_.§@s§(_loc3_,_loc3_.length);
               }
               _loc5_ = _loc4_.§64§();
               if(!_loc9_)
               {
                  _loc7_ = 0;
                  if(!_loc9_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        if(!(_loc9_ && param1))
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.x);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().x = §§pop();
                           if(!(_loc9_ && param1))
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
                  }
                  if(!(_loc9_ && _loc3_))
                  {
                     return _loc4_;
                  }
                  break;
               }
         }
         return null;
      }
   }
}
