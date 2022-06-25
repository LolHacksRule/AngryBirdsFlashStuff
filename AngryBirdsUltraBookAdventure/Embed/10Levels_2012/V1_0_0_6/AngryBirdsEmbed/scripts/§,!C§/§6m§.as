package §,!C§
{
   import §>K§.§9X§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §6m§
   {
      
      public static const §=R§:int = 0;
      
      public static const §]b§:int = 1;
      
      public static const §5Q§:int = 2;
      
      public static const §%e§:int = 3;
      
      public static const §#a§:int = 4;
      
      public static const §8-§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]b§ = 1;
            §5Q§ = 2;
            §%e§ = 3;
            if(!_loc2_)
            {
               §#a§ = 4;
            }
         }
      }
      
      public var mName:String;
      
      public var §#!+§:int;
      
      public var §5;§:Number;
      
      public var §>!'§:Number;
      
      public var §,7§:Number;
      
      public var §6!0§:Array = null;
      
      public function §6m§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super();
            this.mName = param1;
            this.§#!+§ = this.§;b§(param2);
            if(_loc7_ || this)
            {
               this.§5;§ = param3;
            }
            this.§>!'§ = param4;
            this.§,7§ = param5;
         }
      }
      
      public function §,W§() : int
      {
         return this.§#!+§;
      }
      
      public function §9$§() : Number
      {
         return this.§5;§;
      }
      
      public function §8'§() : int
      {
         return this.§>!'§;
      }
      
      private function §;b§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push("Rectangle");
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     return §%e§;
                  }
                  §§push(param1);
                  if(!(_loc3_ && this))
                  {
                     §§push("CIRCLE");
                     if(!_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(§#a§);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              addr58:
                              §§push("POLYGON");
                              if(!_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       return §8-§;
                                    }
                                    addr131:
                                    §§push(param1);
                                    §§push("Image_Circle");
                                 }
                                 else
                                 {
                                    addr83:
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push("Image_Rectangle");
                                       if(!(_loc3_ && param1))
                                       {
                                          addr94:
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(§=R§);
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr118);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(!(_loc3_ && this))
                                             {
                                                addr111:
                                                §§push("Image_Polygon");
                                                if(_loc2_)
                                                {
                                                   addr114:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      §§push(§]b§);
                                                      if(_loc2_)
                                                      {
                                                         addr118:
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr131);
                                                   }
                                                   §§goto(addr135);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   addr135:
                                                   return §§pop();
                                                   §§push(§5Q§);
                                                }
                                                else
                                                {
                                                   §§push(§9X§);
                                                   §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.mName);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() + " invalid name = ");
                                                            if(!_loc3_)
                                                            {
                                                               addr157:
                                                               §§push(§§pop() + param1);
                                                            }
                                                         }
                                                         §§pop().log(§§pop());
                                                         addr160:
                                                         return §%e§;
                                                         addr159:
                                                      }
                                                   }
                                                   §§goto(addr157);
                                                }
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr111);
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr58);
               }
               §§goto(addr94);
            }
            §§goto(addr131);
         }
         §§goto(addr83);
      }
      
      public function §&!-§() : Array
      {
         return this.§6!0§;
      }
      
      public function §4m§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§6!0§ = param1;
         }
      }
      
      public function §-Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§0%§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!_loc5_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§5;§ = §§pop();
            if(_loc4_)
            {
               §§push(this);
               §§push(_loc3_.y);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§>!'§ = §§pop();
            }
         }
      }
      
      public function §0%§() : Array
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§6!0§)
         {
            §§push(_loc5_);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(_loc11_ || _loc1_)
                  {
                     §§push(_loc6_.x);
                     §§push(_loc6_.x);
                     if(_loc11_)
                     {
                        var _loc9_:* = §§pop();
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                           if(_loc11_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(_loc9_);
                                 if(_loc11_ || _loc2_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc10_ && _loc1_))
                                    {
                                       _loc1_ = §§pop();
                                       §§push(_loc6_.y);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc10_ && _loc1_))
                                          {
                                             _loc9_ = §§pop();
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc11_)
                                                {
                                                   addr133:
                                                   _loc4_ = §§pop();
                                                   addr135:
                                                   §§push(_loc9_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             §§goto(addr135);
                                          }
                                          else
                                          {
                                             addr148:
                                             if(§§pop() < §§pop())
                                             {
                                                addr149:
                                                _loc1_ = Number(_loc6_.x);
                                                if(_loc11_ || this)
                                                {
                                                   addr160:
                                                   §§push(_loc6_.x);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc10_)
                                                      {
                                                         addr167:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Number(_loc6_.x));
                                                               if(_loc11_)
                                                               {
                                                                  addr175:
                                                                  _loc3_ = §§pop();
                                                                  if(_loc10_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr183:
                                                                  §§push(_loc6_.y);
                                                                  §§push(_loc2_);
                                                                  if(_loc11_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(_loc11_ || _loc1_)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 addr208:
                                                                                 _loc2_ = §§pop();
                                                                                 addr209:
                                                                                 §§push(_loc6_.y);
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    addr229:
                                                                                    if(§§pop() > _loc4_)
                                                                                    {
                                                                                       addr230:
                                                                                       §§push(_loc6_.y);
                                                                                       if(_loc11_ || this)
                                                                                       {
                                                                                       }
                                                                                       addr240:
                                                                                       _loc4_ = §§pop();
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr160);
                                          }
                                       }
                                       _loc2_ = §§pop();
                                       addr141:
                                       _loc5_ = false;
                                       continue;
                                    }
                                    §§goto(addr183);
                                 }
                              }
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr149);
               }
               else
               {
                  §§push(_loc6_.x);
                  §§push(_loc1_);
                  if(_loc11_)
                  {
                     §§goto(addr148);
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr141);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §@I§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§#!+§);
         if(!(_loc9_ && param1))
         {
            var _loc7_:* = §§pop();
            if(!_loc9_)
            {
               §§push(§#a§);
               if(_loc10_)
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_)
                        {
                           addr165:
                           §§push(0);
                           if(_loc10_ || _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr194:
                           §§push(1);
                           if(_loc9_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§8-§);
                        if(!(_loc9_ && param1))
                        {
                           addr193:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr194);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr203);
                  }
               }
               §§goto(addr193);
            }
            §§goto(addr165);
         }
         addr203:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc10_)
               {
                  §§push(_loc2_);
                  §§push(this.§5;§);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().SetRadius(§§pop());
                  if(_loc9_ && param1)
                  {
                     addr57:
                     _loc3_ = this.§&!-§();
                     (_loc4_ = new b2PolygonShape()).SetAsArray(_loc3_,_loc3_.length);
                     _loc5_ = _loc4_.GetVertices();
                     if(!_loc9_)
                     {
                        _loc7_ = 0;
                        if(_loc10_ || _loc3_)
                        {
                           for each(_loc6_ in _loc5_)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.x);
                              if(!(_loc9_ && _loc3_))
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
                        if(_loc10_)
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
               §§goto(addr57);
         }
         return null;
      }
   }
}
