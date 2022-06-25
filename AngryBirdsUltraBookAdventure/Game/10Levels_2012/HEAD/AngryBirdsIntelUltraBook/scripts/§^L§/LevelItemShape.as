package §^L§
{
   import §'N§.Log;
   import §,X§.b2CircleShape;
   import §,X§.b2PolygonShape;
   import §,X§.b2Shape;
   import §?!&§.b2Vec2;
   
   public class LevelItemShape
   {
      
      public static const §2x§:int = 0;
      
      public static const §[!,§:int = 1;
      
      public static const §>U§:int = 2;
      
      public static const §?m§:int = 3;
      
      public static const §"c§:int = 4;
      
      public static const §0!+§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2x§ = 0;
            while(true)
            {
               §[!,§ = 1;
               loop1:
               while(true)
               {
                  §>U§ = 2;
                  loop2:
                  do
                  {
                     §?m§ = 3;
                     while(true)
                     {
                        §"c§ = 4;
                        while(_loc2_)
                        {
                           continue loop1;
                           §0!+§ = 5;
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc1_);
                  
               }
               if(_loc1_ && LevelItemShape)
               {
                  continue;
               }
               §§goto(addr73);
            }
         }
      }
      
      public var mName:String;
      
      public var §>!V§:int;
      
      public var §^B§:Number;
      
      public var §+!d§:Number;
      
      public var §=!^§:Number;
      
      public var §&P§:Array = null;
      
      public function LevelItemShape(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               loop1:
               while(true)
               {
                  this.§>!V§ = this.§>g§(param2);
                  while(!_loc7_)
                  {
                     this.§^B§ = param3;
                     while(!_loc7_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§+!d§ = param4;
            while(_loc6_)
            {
               this.§=!^§ = param5;
               if(!(_loc7_ && this))
               {
                  return;
               }
            }
            §§goto(addr66);
         }
      }
      
      public function §'!,§() : int
      {
         return this.§>!V§;
      }
      
      public function §=!a§() : Number
      {
         return this.§^B§;
      }
      
      public function §6w§() : int
      {
         return this.§+!d§;
      }
      
      private function §>g§(param1:String) : int
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
               loop1:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push("CIRCLE");
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(!(_loc3_ && this))
                              {
                                 §§push("POLYGON");
                                 while(_loc2_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          while(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push("Image_Rectangle");
                                                while(_loc2_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§push(§2x§);
                                                      }
                                                      else
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            addr144:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push("Image_Polygon");
                                                                  addr147:
                                                                  addr148:
                                                                  while(§§pop() != §§pop())
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr150:
                                                                  §§push(§[!,§);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§push(§?m§);
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr126);
                                                         }
                                                      }
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    §§goto(addr200);
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        addr227:
                        return §§pop();
                     }
                  }
               }
               addr248:
               return §§pop();
            }
         }
         §§goto(addr242);
      }
      
      public function §?[§() : Array
      {
         return this.§&P§;
      }
      
      public function §,t§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&P§ = param1;
         }
      }
      
      public function § D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§?L§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!_loc5_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§^B§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(!_loc5_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§+!d§ = §§pop();
            }
            while(_loc5_ && _loc3_);
            
         }
      }
      
      public function §?L§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         §§push(true);
         if(_loc10_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in this.§&P§)
         {
            if(_loc10_ || _loc1_)
            {
               §§push(_loc5_);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc6_.x);
                        if(_loc10_)
                        {
                           §§push(§§pop());
                           if(!_loc11_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc11_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc11_)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc11_)
                                       {
                                          addr86:
                                          if(_loc10_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_)
                                             {
                                                _loc1_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc11_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            addr115:
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr123:
                                                               _loc4_ = §§pop();
                                                               addr124:
                                                               §§push(_loc9_);
                                                            }
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc11_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc10_ || _loc1_)
                                                               {
                                                                  §§push(false);
                                                                  if(!(_loc11_ && _loc2_))
                                                                  {
                                                                     addr325:
                                                                     _loc5_ = Boolean(§§pop());
                                                                  }
                                                                  §§goto(addr325);
                                                                  addr139:
                                                               }
                                                               else
                                                               {
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_.x);
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_ || _loc1_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc11_ && _loc1_))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      addr229:
                                                                                                      loop6:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            while(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!(_loc11_ && _loc1_))
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(_loc11_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr241:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                            addr231:
                                                                                                         }
                                                                                                         addr293:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(_loc10_ || _loc1_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     addr313:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr314:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc1_ = §§pop();
                                                                                                                           addr315:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr301:
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.x);
                                                                                                               addr256:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  addr257:
                                                                                                                  addr326:
                                                                                                                  loop4:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc11_ && this)
                                                                                                                           {
                                                                                                                              break loop4;
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        addr288:
                                                                                                                        continue loop0;
                                                                                                                        addr258:
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  §§goto(addr288);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.y);
                                                                                                         if(!(_loc11_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!(_loc11_ && _loc1_))
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc11_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr241);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr198:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                    addr207:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc11_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       §§goto(addr258);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr252);
                                                                                                                           }
                                                                                                                           §§goto(addr207);
                                                                                                                        }
                                                                                                                        addr184:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr257);
                                                                                                                     }
                                                                                                                     §§goto(addr288);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr229);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr256);
                                                                                                            }
                                                                                                            §§goto(addr249);
                                                                                                         }
                                                                                                         §§goto(addr198);
                                                                                                      }
                                                                                                   }
                                                                                                   addr228:
                                                                                                }
                                                                                                §§goto(addr249);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr292:
                                                                                    }
                                                                                    §§goto(addr293);
                                                                                 }
                                                                                 §§goto(addr313);
                                                                              }
                                                                           }
                                                                           addr274:
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                  }
                                                                  addr265:
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr251);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr301);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr292);
               }
               §§goto(addr325);
            }
            §§goto(addr265);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §-!C§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§>!V§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && param1))
            {
               §§push(§"c§);
               if(_loc10_ || _loc2_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_ || _loc2_)
                        {
                           addr197:
                           §§push(0);
                           if(_loc10_)
                           {
                              addr200:
                           }
                           else
                           {
                              addr243:
                           }
                        }
                        else
                        {
                           addr235:
                           §§push(2);
                           if(!(_loc9_ && _loc2_))
                           {
                              §§goto(addr243);
                           }
                        }
                     }
                     else
                     {
                        §§push(§0!+§);
                        if(!_loc9_)
                        {
                           addr206:
                           if(§§pop() === _loc7_)
                           {
                              if(!(_loc9_ && this))
                              {
                                 §§push(1);
                                 if(!(_loc9_ && this))
                                 {
                                    addr246:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc2_ = new b2CircleShape();
                                          if(_loc10_)
                                          {
                                             §§push(_loc2_);
                                             §§push(this.§^B§);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().§%!j§(§§pop());
                                             if(_loc9_)
                                             {
                                                addr53:
                                                _loc3_ = this.§?[§();
                                                _loc4_ = new b2PolygonShape();
                                                if(!_loc9_)
                                                {
                                                   _loc4_.§ !B§(_loc3_,_loc3_.length);
                                                }
                                                _loc5_ = _loc4_.§6!_§();
                                                if(!(_loc9_ && this))
                                                {
                                                   _loc7_ = 0;
                                                   if(_loc10_ || this)
                                                   {
                                                      for each(_loc6_ in _loc5_)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(_loc6_);
                                                            §§push(_loc6_.x);
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * param1);
                                                            }
                                                            §§pop().x = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         §§push(_loc6_);
                                                         §§push(_loc6_.y);
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                   }
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      return _loc4_;
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                          return _loc2_;
                                       case 1:
                                          §§goto(addr53);
                                    }
                                    return null;
                                    addr245:
                                    addr232:
                                 }
                              }
                           }
                           else if(true)
                           {
                              §§goto(addr245);
                              §§push(2);
                           }
                           §§goto(addr245);
                        }
                        §§goto(addr232);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr206);
               }
               §§goto(addr200);
            }
            §§goto(addr197);
         }
         §§goto(addr246);
      }
   }
}
