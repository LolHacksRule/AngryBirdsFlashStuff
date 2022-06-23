package §7!0§
{
   import §+!"§.§5!<§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §<$§
   {
      
      public static const §@6§:int = 0;
      
      public static const § ]§:int = 1;
      
      public static const § Q§:int = 2;
      
      public static const §2O§:int = 3;
      
      public static const §]M§:int = 4;
      
      public static const §[!"§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §<$§))
         {
            § Q§ = 2;
            if(_loc1_ || _loc1_)
            {
               §2O§ = 3;
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr69);
               }
               §§goto(addr74);
            }
         }
         addr69:
         if(!_loc2_)
         {
            addr74:
            §[!"§ = 5;
         }
      }
      
      public var mName:String;
      
      public var §2! §:int;
      
      public var § l§:Number;
      
      public var §4N§:Number;
      
      public var §]Q§:Number;
      
      public var §!D§:Array = null;
      
      public function §<$§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         this.mName = param1;
         this.§2! § = this.§8$§(param2);
         if(_loc6_)
         {
            this.§ l§ = param3;
            this.§4N§ = param4;
            if(!_loc7_)
            {
               this.§]Q§ = param5;
            }
         }
      }
      
      public function § r§() : int
      {
         return this.§2! §;
      }
      
      public function §"!1§() : Number
      {
         return this.§ l§;
      }
      
      public function §,!%§() : int
      {
         return this.§4N§;
      }
      
      private function §8$§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || this)
            {
               §§push("Rectangle");
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        §§push(§2O§);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr139:
                        if(param1 == "Image_Circle")
                        {
                           §§goto(addr143);
                        }
                        else
                        {
                           addr154:
                           §§push(§5!<§);
                           §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(this.mName);
                              if(!_loc3_)
                              {
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr180);
                        }
                     }
                     addr183:
                     §§push(§§pop() + §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() + " invalid name = ");
                        if(!(_loc3_ && this))
                        {
                           addr180:
                           §§push(§§pop() + param1);
                        }
                     }
                     §§pop().log(§§pop());
                     return §2O§;
                  }
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push("CIRCLE");
                     if(_loc2_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              §§push(§]M§);
                              if(_loc2_ || this)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr105);
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc2_ || _loc2_)
                           {
                              addr96:
                              §§push("POLYGON");
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr104:
                                 if(§§pop() == §§pop())
                                 {
                                    addr105:
                                    return §[!"§;
                                 }
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    §§push("Image_Rectangle");
                                    if(!(_loc3_ && param1))
                                    {
                                       addr118:
                                       if(§§pop() == §§pop())
                                       {
                                          return §@6§;
                                       }
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          addr131:
                                          §§push("Image_Polygon");
                                          if(_loc2_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §§push(§ ]§);
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr143);
                                             }
                                             else
                                             {
                                                §§goto(addr139);
                                             }
                                             §§goto(addr143);
                                          }
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr131);
                        }
                        addr143:
                        return § Q§;
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr96);
                  §§goto(addr139);
               }
               §§goto(addr104);
            }
            §§goto(addr139);
         }
         §§goto(addr154);
      }
      
      public function §]X§() : Array
      {
         return this.§!D§;
      }
      
      public function §<+§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!D§ = param1;
         }
      }
      
      public function §"g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = this.§&R§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc5_ || this)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§ l§ = §§pop();
            if(_loc5_ || _loc3_)
            {
               addr83:
               §§push(this);
               §§push(_loc3_.y);
               if(!_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§4N§ = §§pop();
            }
            return;
         }
         §§goto(addr83);
      }
      
      public function §&R§() : Array
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§!D§)
         {
            if(_loc10_)
            {
               continue;
            }
            §§push(_loc5_);
            if(_loc11_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     §§push(_loc6_.x);
                     §§push(_loc6_.x);
                     if(!(_loc10_ && _loc1_))
                     {
                        var _loc9_:* = §§pop();
                        if(!(_loc10_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(_loc11_)
                           {
                              _loc3_ = §§pop();
                              if(_loc11_ || _loc2_)
                              {
                                 §§push(_loc9_);
                                 if(_loc11_ || _loc3_)
                                 {
                                    addr97:
                                    if(_loc11_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc10_)
                                       {
                                          _loc1_ = §§pop();
                                          §§push(_loc6_.y);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc11_)
                                                {
                                                   addr119:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc10_ && _loc1_))
                                                   {
                                                      addr127:
                                                      _loc4_ = §§pop();
                                                      addr128:
                                                      §§push(_loc9_);
                                                   }
                                                }
                                                if(_loc11_ || _loc2_)
                                                {
                                                   addr147:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc10_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc11_)
                                                      {
                                                         addr154:
                                                         _loc5_ = false;
                                                         continue;
                                                      }
                                                      addr169:
                                                      §§push(Number(_loc6_.x));
                                                      if(!_loc10_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            addr182:
                                                            §§push(_loc6_.x);
                                                            §§push(_loc3_);
                                                            if(_loc11_ || _loc1_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(_loc11_ || _loc1_)
                                                                  {
                                                                     addr202:
                                                                     _loc3_ = Number(_loc6_.x);
                                                                  }
                                                               }
                                                               §§push(_loc6_.y);
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  addr213:
                                                                  §§push(_loc2_);
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     addr221:
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           addr226:
                                                                           addr224:
                                                                           §§push(Number(_loc6_.y));
                                                                           if(!(_loc10_ && _loc1_))
                                                                           {
                                                                              addr234:
                                                                              _loc2_ = §§pop();
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 addr242:
                                                                                 §§push(_loc6_.y);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                 }
                                                                                 addr275:
                                                                                 _loc4_ = §§pop();
                                                                                 continue;
                                                                              }
                                                                              addr265:
                                                                              §§push(_loc6_.y);
                                                                              if(!(_loc10_ && _loc1_))
                                                                              {
                                                                                 §§goto(addr275);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           addr247:
                                                                           if(§§pop() <= _loc4_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc10_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr234);
                                             }
                                             else
                                             {
                                                addr168:
                                                if(§§pop() < §§pop())
                                                {
                                                   §§goto(addr169);
                                                }
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr147);
                                       }
                                       else
                                       {
                                          addr165:
                                          §§push(_loc1_);
                                          if(!_loc10_)
                                          {
                                             §§goto(addr168);
                                          }
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr242);
               }
               else
               {
                  §§push(_loc6_.x);
                  if(_loc11_ || _loc2_)
                  {
                     §§goto(addr165);
                  }
               }
               §§goto(addr234);
            }
            §§goto(addr154);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §,8§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§2! §);
         if(!(_loc10_ && _loc2_))
         {
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               §§push(§]M§);
               if(!(_loc10_ && this))
               {
                  §§push(_loc7_);
                  if(_loc9_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || this)
                        {
                           addr194:
                           §§push(0);
                           if(_loc9_)
                           {
                              addr217:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = new b2CircleShape();
                                    if(_loc9_ || this)
                                    {
                                       §§push(_loc2_);
                                       §§push(this.§ l§);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().SetRadius(§§pop());
                                       if(_loc9_)
                                       {
                                          return _loc2_;
                                       }
                                    }
                                 case 1:
                                    _loc3_ = this.§]X§();
                                    (_loc4_ = new b2PolygonShape()).SetAsArray(_loc3_,_loc3_.length);
                                    _loc5_ = _loc4_.GetVertices();
                                    if(!_loc10_)
                                    {
                                       _loc7_ = 0;
                                       if(!(_loc10_ && this))
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
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(_loc6_);
                                                §§push(_loc6_.y);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§pop().y = §§pop();
                                             }
                                          }
                                       }
                                       if(!_loc10_)
                                       {
                                          return _loc4_;
                                       }
                                       break;
                                    }
                              }
                              return null;
                              addr216:
                           }
                        }
                        else
                        {
                           addr203:
                           §§push(1);
                           if(_loc9_ || param1)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§[!"§);
                        if(_loc9_)
                        {
                           §§push(_loc7_);
                        }
                     }
                     §§goto(addr216);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr203);
                  }
                  else
                  {
                     §§push(2);
                  }
               }
               §§goto(addr216);
            }
            §§goto(addr194);
         }
         §§goto(addr217);
      }
   }
}
