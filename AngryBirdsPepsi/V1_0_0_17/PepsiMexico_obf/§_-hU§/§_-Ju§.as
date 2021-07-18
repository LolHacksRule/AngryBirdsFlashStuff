package §_-HU§
{
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2CircleShape;
   import §_-Kt§.b2PolygonShape;
   import §_-Kt§.b2Shape;
   import §_-e3§.§_-54§;
   
   public class §_-Ju§
   {
      
      public static const §_-Gp§:int = 0;
      
      public static const §_-VB§:int = 1;
      
      public static const §_-g-§:int = 2;
      
      public static const §_-4b§:int = 3;
      
      public static const §_-d9§:int = 4;
      
      public static const §_-K9§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-Ju§))
         {
            §_-VB§ = 1;
            if(_loc1_)
            {
               §_-g-§ = 2;
               §_-4b§ = 3;
               §_-d9§ = 4;
               if(_loc1_)
               {
                  addr53:
                  §_-K9§ = 5;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public var mName:String;
      
      public var §_-zU§:int;
      
      public var §_-sa§:Number;
      
      public var §_-cr§:Number;
      
      public var §_-3o§:Number;
      
      public var §_-0p§:Array = null;
      
      public function §_-Ju§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            super();
            this.mName = param1;
            this.§_-zU§ = this.§_-EH§(param2);
            if(!_loc7_)
            {
               this.§_-sa§ = param3;
               this.§_-cr§ = param4;
               if(!_loc6_)
               {
               }
               §§goto(addr57);
            }
            this.§_-3o§ = param5;
         }
         addr57:
      }
      
      public function §_-9B§() : int
      {
         return this.§_-zU§;
      }
      
      public function §while§() : Number
      {
         return this.§_-sa§;
      }
      
      public function §_-YY§() : int
      {
         return this.§_-cr§;
      }
      
      private function §_-EH§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            if(§§pop() == "Rectangle")
            {
               return §_-4b§;
            }
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() == "CIRCLE")
               {
                  if(!_loc2_)
                  {
                     §§push(§_-d9§);
                     if(!(_loc2_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr37:
                     §§push(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(§§pop() == "POLYGON")
                        {
                           if(_loc3_ || param1)
                           {
                              §§push(§_-K9§);
                              if(_loc3_ || this)
                              {
                                 §§goto(addr69);
                              }
                              else
                              {
                                 §§goto(addr94);
                              }
                           }
                           else
                           {
                              addr97:
                              §§push(param1);
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              addr73:
                              if(§§pop() == "Image_Rectangle")
                              {
                                 if(!_loc2_)
                                 {
                                    return §_-Gp§;
                                 }
                              }
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 addr82:
                                 if(§§pop() == "Image_Polygon")
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§_-VB§);
                                       if(!_loc2_)
                                       {
                                          addr94:
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr132:
                                       §§push(§_-4b§);
                                    }
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    §§goto(addr97);
                                 }
                              }
                           }
                        }
                        if(§§pop() == "Image_Circle")
                        {
                           §§push(§_-g-§);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§push(§_-54§);
                           §§push("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName);
                           if(_loc3_)
                           {
                              §§push(§§pop() + " invalid name = ");
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop() + param1);
                              }
                           }
                           §§pop().log(§§pop());
                           §§goto(addr132);
                        }
                        addr133:
                        return §§pop();
                     }
                     §§goto(addr82);
                  }
                  addr69:
                  return §§pop();
               }
               §§goto(addr37);
            }
         }
         §§goto(addr73);
      }
      
      public function §_-mW§() : Array
      {
         return this.§_-0p§;
      }
      
      public function §_-E5§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-0p§ = param1;
         }
      }
      
      public function §_-Ej§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§_-gi§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc4_)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§_-sa§ = §§pop();
            if(_loc4_ || _loc3_)
            {
               addr63:
               §§push(this);
               §§push(_loc3_.y);
               if(!_loc5_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§_-cr§ = §§pop();
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §_-gi§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§_-0p§)
         {
            if(_loc10_)
            {
               §§push(_loc5_);
               if(_loc10_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        §§push(_loc6_.x);
                        §§push(_loc6_.x);
                        if(!(_loc11_ && this))
                        {
                           var _loc9_:* = §§pop();
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc11_ && _loc1_))
                                 {
                                    §§push(_loc9_);
                                    if(_loc10_ || _loc1_)
                                    {
                                       addr93:
                                       _loc1_ = Number(§§pop());
                                       if(_loc10_)
                                       {
                                          §§push(_loc6_.y);
                                          §§push(_loc6_.y);
                                          if(_loc10_)
                                          {
                                             _loc9_ = §§pop();
                                             if(!_loc11_)
                                             {
                                                addr106:
                                                §§push(Number(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   addr116:
                                                   _loc4_ = §§pop();
                                                   §§push(_loc9_);
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc10_)
                                                {
                                                   addr201:
                                                   if(§§pop() > _loc4_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         addr208:
                                                         _loc4_ = Number(_loc6_.y);
                                                      }
                                                   }
                                                   continue;
                                                }
                                                _loc2_ = §§pop();
                                             }
                                             §§goto(addr116);
                                          }
                                          else
                                          {
                                             addr154:
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(_loc6_.x);
                                                if(_loc10_ || _loc2_)
                                                {
                                                   _loc3_ = Number(§§pop());
                                                   if(_loc11_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr173:
                                                   §§push(_loc6_.y);
                                                   §§push(_loc2_);
                                                   if(_loc10_)
                                                   {
                                                      addr192:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         addr179:
                                                         §§push(_loc6_.y);
                                                      }
                                                      §§push(_loc6_.y);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc11_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc10_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr173);
                                          }
                                       }
                                       _loc5_ = false;
                                       continue;
                                    }
                                    §§goto(addr106);
                                 }
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr179);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                     if(_loc10_)
                     {
                        §§push(_loc1_);
                        if(!_loc11_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc11_)
                              {
                                 §§push(_loc6_.x);
                                 if(_loc10_)
                                 {
                                    addr140:
                                    §§push(Number(§§pop()));
                                    if(_loc10_)
                                    {
                                       _loc1_ = §§pop();
                                       addr144:
                                       §§push(_loc6_.x);
                                       §§push(_loc3_);
                                       if(!(_loc11_ && this))
                                       {
                                          §§goto(addr154);
                                       }
                                       §§goto(addr192);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr140);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr192);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §_-3O§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§_-zU§);
         if(_loc10_ || _loc3_)
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && _loc3_))
            {
               §§push(§_-d9§);
               if(!(_loc9_ && param1))
               {
                  §§push(_loc7_);
                  if(_loc10_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr187:
                           }
                        }
                        else
                        {
                           addr193:
                           §§push(1);
                           if(!_loc9_)
                           {
                              addr203:
                           }
                        }
                        addr209:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = new b2CircleShape();
                              if(!_loc9_)
                              {
                                 §§push(_loc2_);
                                 §§push(this.§_-sa§);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§_-fZ§(§§pop());
                                 if(!(_loc9_ && this))
                                 {
                                    return _loc2_;
                                 }
                              }
                           case 1:
                              _loc3_ = this.§_-mW§();
                              (_loc4_ = new b2PolygonShape()).§_-tU§(_loc3_,_loc3_.length);
                              _loc5_ = _loc4_.§_-JC§();
                              if(_loc10_ || this)
                              {
                                 _loc7_ = 0;
                                 if(!(_loc9_ && this))
                                 {
                                    for each(_loc6_ in _loc5_)
                                    {
                                       §§push(_loc6_);
                                       §§push(_loc6_.x);
                                       if(!(_loc9_ && _loc2_))
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
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    return _loc4_;
                                 }
                                 break;
                              }
                        }
                        return null;
                        addr208:
                     }
                     else
                     {
                        §§push(§_-K9§);
                        if(!_loc9_)
                        {
                           addr192:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr193);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr208);
                        }
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr192);
               }
               §§goto(addr187);
            }
            §§goto(addr193);
         }
         §§goto(addr209);
      }
   }
}
