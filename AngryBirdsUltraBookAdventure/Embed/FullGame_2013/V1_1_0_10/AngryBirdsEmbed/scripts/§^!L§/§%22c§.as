package §^!L§
{
   import §3a§.§7!+§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §"c§
   {
      
      public static const §=!,§:int = 0;
      
      public static const §7%§:int = 1;
      
      public static const §7D§:int = 2;
      
      public static const §3!C§:int = 3;
      
      public static const §,p§:int = 4;
      
      public static const §"!K§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §"c§))
         {
            §=!,§ = 0;
            §7%§ = 1;
            if(!(_loc2_ && §"c§))
            {
               addr46:
               §7D§ = 2;
            }
            §3!C§ = 3;
            §,p§ = 4;
            §"!K§ = 5;
            return;
         }
         §§goto(addr46);
      }
      
      public var mName:String;
      
      public var §3<§:int;
      
      public var §[s§:Number;
      
      public var §8!&§:Number;
      
      public var §%!L§:Number;
      
      public var §&!#§:Array = null;
      
      public function §"c§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         if(!(_loc7_ && param2))
         {
            this.mName = param1;
            if(!(_loc7_ && param1))
            {
               this.§3<§ = this.§#!'§(param2);
               this.§[s§ = param3;
               addr53:
               this.§8!&§ = param4;
               this.§%!L§ = param5;
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §3@§() : int
      {
         return this.§3<§;
      }
      
      public function §&1§() : Number
      {
         return this.§[s§;
      }
      
      public function §'6§() : int
      {
         return this.§8!&§;
      }
      
      private function §#!'§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push("Rectangle");
               if(_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_)
                     {
                        addr38:
                        §§push(§3!C§);
                        if(_loc3_ || param1)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr118:
                        return §=!,§;
                        addr117:
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push("CIRCLE");
                        if(_loc3_ || param1)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(§,p§);
                                 if(!(_loc2_ && param1))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr145);
                              }
                              else
                              {
                                 addr137:
                                 §§push(param1);
                              }
                              §§goto(addr145);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§push("POLYGON");
                                 if(_loc3_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(§"!K§);
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push("Image_Rectangle");
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr109:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr117);
                                                }
                                             }
                                             §§push(param1);
                                             if(_loc3_)
                                             {
                                                addr122:
                                                §§push("Image_Polygon");
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr130:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(§7%§);
                                                         if(!_loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   addr192:
                                                   return §3!C§;
                                                   addr191:
                                                }
                                                addr139:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(§7D§);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr145);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr163:
                                                      §§push(§7!+§);
                                                      §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(this.mName);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() + " invalid name = ");
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr189:
                                                                  §§push(§§pop() + param1);
                                                               }
                                                            }
                                                            §§pop().log(§§pop());
                                                            §§goto(addr191);
                                                         }
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr163);
                                             }
                                             addr138:
                                             §§goto(addr139);
                                             §§push("Image_Circle");
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr109);
                              }
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr122);
                  }
                  addr145:
                  return §§pop();
               }
               §§goto(addr130);
            }
            §§goto(addr122);
         }
         §§goto(addr38);
      }
      
      public function §&v§() : Array
      {
         return this.§&!#§;
      }
      
      public function §[[§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&!#§ = param1;
         }
      }
      
      public function §9%§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§+#§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§[s§ = §§pop();
            if(_loc4_ || _loc2_)
            {
               addr82:
               §§push(this);
               §§push(_loc3_.y);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§8!&§ = §§pop();
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function §+#§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§&!#§)
         {
            if(!_loc11_)
            {
               §§push(_loc5_);
               if(!_loc11_)
               {
                  if(§§pop())
                  {
                     §§push(_loc6_.x);
                     §§push(_loc6_.x);
                     if(!_loc11_)
                     {
                        var _loc9_:* = §§pop();
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc10_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc11_)
                              {
                                 §§push(_loc9_);
                                 if(!_loc11_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc10_ || this)
                                       {
                                          addr86:
                                          §§push(_loc6_.y);
                                          §§push(_loc6_.y);
                                          if(!(_loc11_ && _loc1_))
                                          {
                                             addr96:
                                             _loc9_ = §§pop();
                                             if(!(_loc11_ && _loc1_))
                                             {
                                                addr104:
                                                §§push(Number(§§pop()));
                                                if(!(_loc11_ && this))
                                                {
                                                   addr112:
                                                   _loc4_ = §§pop();
                                                   addr114:
                                                   §§push(Number(_loc9_));
                                                   if(!_loc11_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!(_loc11_ && this))
                                                      {
                                                         addr137:
                                                         _loc5_ = false;
                                                         continue;
                                                      }
                                                      addr191:
                                                      §§push(_loc6_.y);
                                                      §§push(_loc2_);
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         addr201:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!(_loc10_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            addr211:
                                                            §§push(Number(_loc6_.y));
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr219:
                                                               _loc2_ = §§pop();
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  addr227:
                                                                  §§push(_loc6_.y);
                                                                  if(!(_loc11_ && _loc1_))
                                                                  {
                                                                     addr247:
                                                                     if(§§pop() <= _loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr248:
                                                                     §§push(_loc6_.y);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr252:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  continue;
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr211);
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                          else
                                          {
                                             addr170:
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc6_.x);
                                                   if(_loc10_ || this)
                                                   {
                                                      addr182:
                                                      §§push(Number(§§pop()));
                                                      if(_loc10_ || _loc1_)
                                                      {
                                                         addr190:
                                                         _loc3_ = §§pop();
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr114);
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                     if(!(_loc11_ && _loc1_))
                     {
                        §§push(_loc1_);
                        if(_loc10_ || _loc1_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc11_)
                              {
                                 _loc1_ = Number(_loc6_.x);
                                 if(_loc10_)
                                 {
                                    addr165:
                                    §§push(_loc6_.x);
                                    §§push(_loc3_);
                                    if(_loc10_)
                                    {
                                       §§goto(addr170);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr201);
                     }
                  }
                  §§goto(addr190);
               }
               §§goto(addr137);
            }
            §§goto(addr86);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §?d§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§3<§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && _loc2_))
            {
               §§push(§,p§);
               if(_loc10_)
               {
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc9_)
                        {
                           addr185:
                           §§push(0);
                           if(!_loc10_)
                           {
                              addr202:
                           }
                        }
                        else
                        {
                           addr199:
                           §§push(1);
                           if(_loc10_)
                           {
                              §§goto(addr202);
                           }
                        }
                        addr208:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = new b2CircleShape();
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(_loc2_);
                                 §§push(this.§[s§);
                                 if(_loc10_)
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
                              _loc3_ = this.§&v§();
                              (_loc4_ = new b2PolygonShape()).SetAsArray(_loc3_,_loc3_.length);
                              _loc5_ = _loc4_.GetVertices();
                              if(!_loc9_)
                              {
                                 _loc7_ = 0;
                                 if(_loc10_ || this)
                                 {
                                    for each(_loc6_ in _loc5_)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.x);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().x = §§pop();
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(_loc6_);
                                          §§push(_loc6_.y);
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                    }
                                 }
                                 if(_loc10_ || this)
                                 {
                                    return _loc4_;
                                 }
                                 break;
                              }
                        }
                        return null;
                        addr207:
                     }
                     else
                     {
                        §§push(§"!K§);
                        if(_loc10_ || _loc2_)
                        {
                           addr198:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr199);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr207);
                        }
                     }
                     §§goto(addr202);
                  }
               }
               §§goto(addr198);
            }
            §§goto(addr185);
         }
         §§goto(addr208);
      }
   }
}
