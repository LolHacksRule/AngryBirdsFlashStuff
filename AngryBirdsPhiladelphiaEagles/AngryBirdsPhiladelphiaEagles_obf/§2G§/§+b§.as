package §2G§
{
   import §`K§.§ L§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §+b§
   {
      
      public static const §2k§:int = 0;
      
      public static const §^!=§:int = 1;
      
      public static const §'j§:int = 2;
      
      public static const § do§:int = 3;
      
      public static const §%<§:int = 4;
      
      public static const §'J§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         do
         {
            §^!=§ = 1;
         }
         while(_loc2_);
         
         do
         {
            § do§ = 3;
            §%<§ = 4;
            do
            {
               §'J§ = 5;
            }
            while(!(_loc1_ || §+b§));
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public var mName:String;
      
      public var §6H§:int;
      
      public var §6! §:Number;
      
      public var §@g§:Number;
      
      public var §]4§:Number;
      
      public var §'$§:Array = null;
      
      public function §+b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
         }
         while(true)
         {
            this.mName = param1;
            this.§6H§ = this.§`w§(param2);
            while(_loc7_ || param2)
            {
               this.§6! § = param3;
               while(_loc7_)
               {
                  this.§@g§ = param4;
                  if(!_loc6_)
                  {
                     this.§]4§ = param5;
                     return;
                  }
               }
            }
         }
      }
      
      public function §5L§() : int
      {
         return this.§6H§;
      }
      
      public function §[k§() : Number
      {
         return this.§6! §;
      }
      
      public function §-I§() : int
      {
         return this.§@g§;
      }
      
      private function §`w§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         loop0:
         while(true)
         {
            §§push("Rectangle");
            while(§§pop() != §§pop())
            {
               §§push(param1);
               while(true)
               {
                  §§push("CIRCLE");
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     loop4:
                     while(true)
                     {
                        §§push("POLYGON");
                        addr185:
                        addr187:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push(§'J§);
                              break;
                           }
                           §§push(param1);
                           continue loop4;
                        }
                        return §§pop();
                     }
                  }
                  return §%<§;
                  if(_loc3_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr200);
         }
      }
      
      public function §'! §() : Array
      {
         return this.§'$§;
      }
      
      public function §]6§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'$§ = param1;
         }
      }
      
      public function §,p§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§`!#§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!_loc5_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§6! § = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§@g§ = §§pop();
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
      
      public function §`!#§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§'$§)
         {
            §§push(_loc5_);
            if(!(_loc11_ && _loc1_))
            {
               if(§§pop())
               {
                  §§push(_loc6_.x);
                  if(_loc10_ || _loc1_)
                  {
                     §§push(§§pop());
                     if(_loc10_)
                     {
                        var _loc9_:* = §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc10_ || this)
                           {
                              _loc3_ = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(_loc9_);
                                 if(_loc10_)
                                 {
                                    addr89:
                                    if(!_loc11_)
                                    {
                                       _loc1_ = §§pop();
                                       §§push(_loc6_.y);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             addr106:
                                             _loc9_ = §§pop();
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc11_ && this))
                                                {
                                                   addr122:
                                                   _loc4_ = §§pop();
                                                   §§push(_loc9_);
                                                }
                                                if(_loc10_ || this)
                                                {
                                                   _loc2_ = Number(§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr274:
                                                      _loc5_ = false;
                                                   }
                                                   else
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_.x);
                                                            addr229:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               addr230:
                                                               addr250:
                                                               loop4:
                                                               while(_loc10_ || _loc3_)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.x);
                                                                        addr240:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr241:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                        addr170:
                                                                        if(_loc11_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(!_loc11_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              addr188:
                                                                           }
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_ || _loc1_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc11_ && this))
                                                                                    {
                                                                                       addr204:
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.y);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(_loc2_);
                                                                                                loop8:
                                                                                                for(; _loc10_; §§push(_loc4_),if(!(_loc10_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                },while(true)
                                                                                                {
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(_loc11_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§goto(addr170);
                                                                                                })
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr223:
                                                                                                         §§push(_loc6_.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr224:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               addr225:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         addr223:
                                                                                                      }
                                                                                                      §§goto(addr225);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr188);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr204);
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§goto(addr240);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.x);
                                                                                          }
                                                                                          addr261:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          addr265:
                                                                                          addr275:
                                                                                          while(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr263:
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                              }
                                                                              §§goto(addr223);
                                                                           }
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr261);
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr162);
                                       }
                                    }
                                    §§goto(addr223);
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr229);
               }
               else
               {
                  §§push(_loc6_.x);
                  if(!_loc11_)
                  {
                     §§goto(addr250);
                     §§push(_loc1_);
                  }
               }
               §§goto(addr263);
            }
            §§goto(addr274);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §3@§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§6H§);
         if(!(_loc9_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(_loc10_)
            {
               §§push(§%<§);
               if(!_loc9_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc9_)
                        {
                           addr180:
                           §§push(0);
                           if(_loc9_)
                           {
                           }
                        }
                        else
                        {
                           addr189:
                           §§push(1);
                           if(!_loc10_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§'J§);
                        if(_loc10_)
                        {
                           addr188:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr189);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr198);
                  }
               }
               §§goto(addr188);
            }
            §§goto(addr180);
         }
         addr198:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc2_);
                  §§push(this.§6! §);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().SetRadius(§§pop());
                  if(_loc10_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§'! §();
               (_loc4_ = new b2PolygonShape()).SetAsArray(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.GetVertices();
               if(!(_loc9_ && _loc2_))
               {
                  _loc7_ = 0;
                  if(!(_loc9_ && _loc3_))
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().y = §§pop();
                        }
                     }
                  }
                  if(!_loc10_)
                  {
                     break;
                  }
               }
               return _loc4_;
         }
         return null;
      }
   }
}
