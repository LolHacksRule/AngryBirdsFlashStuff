package §?!6§
{
   import § !r§.§`![§;
   import §#b§.b2CircleShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §<!B§.b2Vec2;
   
   public class §"!0§
   {
      
      public static const §9!H§:int = 0;
      
      public static const §`!j§:int = 1;
      
      public static const §^!M§:int = 2;
      
      public static const §'5§:int = 3;
      
      public static const §3I§:int = 4;
      
      public static const §`C§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §9!H§ = 0;
            if(_loc1_)
            {
               §`!j§ = 1;
               if(_loc1_ || _loc2_)
               {
                  addr58:
                  §^!M§ = 2;
                  if(_loc1_ || _loc2_)
                  {
                     §'5§ = 3;
                     §3I§ = 4;
                     if(_loc1_ || _loc1_)
                     {
                     }
                     §§goto(addr84);
                  }
                  §`C§ = 5;
               }
               addr84:
               return;
            }
         }
         §§goto(addr58);
      }
      
      public var mName:String;
      
      public var §71§:int;
      
      public var §4!L§:Number;
      
      public var §"!C§:Number;
      
      public var §5M§:Number;
      
      public var §5I§:Array = null;
      
      public function §"!0§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         super();
         if(!(_loc7_ && this))
         {
            this.mName = param1;
            this.§71§ = this.§?V§(param2);
         }
         this.§4!L§ = param3;
         this.§"!C§ = param4;
         if(_loc6_)
         {
            this.§5M§ = param5;
         }
      }
      
      public function §?p§() : int
      {
         return this.§71§;
      }
      
      public function §&<§() : Number
      {
         return this.§4!L§;
      }
      
      public function §=$§() : int
      {
         return this.§"!C§;
      }
      
      private function §?V§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push("Rectangle");
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     return §'5§;
                  }
                  §§push(param1);
                  if(_loc2_)
                  {
                     §§push("CIRCLE");
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           §§push(§3I§);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr136);
                  }
                  addr63:
                  §§push("POLYGON");
                  if(!_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc2_)
                        {
                           return §`C§;
                        }
                        addr139:
                        §§push(§^!M§);
                        if(_loc2_)
                        {
                           §§goto(addr142);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push("Image_Rectangle");
                           if(!_loc3_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§push(§9!H§);
                                 if(!(_loc3_ && param1))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr116);
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc2_)
                                 {
                                    addr104:
                                    §§push("Image_Polygon");
                                    if(!_loc3_)
                                    {
                                       §§goto(addr107);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr116);
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr162);
                  }
                  addr107:
                  if(§§pop() == §§pop())
                  {
                     §§push(§`!j§);
                     if(_loc2_ || this)
                     {
                        addr116:
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr136:
                     addr135:
                     if(param1 == "Image_Circle")
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr139);
                        }
                        §§goto(addr162);
                     }
                     §§push(§`![§);
                     §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                     if(_loc2_)
                     {
                        §§push(this.mName);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop() + " invalid name = ");
                              if(!_loc2_)
                              {
                              }
                              addr160:
                              §§pop().log(§§pop());
                              addr162:
                              return §§pop();
                              §§push(§'5§);
                           }
                           §§push(param1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr160);
                  }
                  addr142:
                  return §§pop();
               }
            }
            §§goto(addr136);
         }
         §§goto(addr139);
      }
      
      public function §#5§() : Array
      {
         return this.§5I§;
      }
      
      public function §@!@§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5I§ = param1;
         }
      }
      
      public function §]3§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Array = this.§]!5§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(_loc5_ || this)
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!_loc4_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§4!L§ = §§pop();
            if(_loc5_ || _loc3_)
            {
               addr78:
               §§push(this);
               §§push(_loc3_.y);
               if(!_loc4_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§"!C§ = §§pop();
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function §]!5§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§5I§)
         {
            §§push(_loc5_);
            if(!_loc11_)
            {
               if(§§pop())
               {
                  §§push(_loc6_.x);
                  if(!(_loc11_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc10_ || this)
                     {
                        var _loc9_:* = §§pop();
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc11_ && _loc3_))
                           {
                              _loc3_ = §§pop();
                              if(_loc10_)
                              {
                                 §§push(_loc9_);
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc10_ || this)
                                       {
                                          §§push(_loc6_.y);
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             §§push(§§pop());
                                             if(!(_loc11_ && _loc1_))
                                             {
                                                addr113:
                                                _loc9_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   addr126:
                                                   §§push(Number(§§pop()));
                                                   if(_loc10_)
                                                   {
                                                      addr129:
                                                      _loc4_ = §§pop();
                                                      addr131:
                                                      §§push(Number(_loc9_));
                                                      if(!_loc11_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr137:
                                                         _loc5_ = false;
                                                         if(_loc10_ || this)
                                                         {
                                                            continue;
                                                         }
                                                         addr206:
                                                         §§push(_loc6_.y);
                                                         if(!_loc11_)
                                                         {
                                                            addr210:
                                                            §§push(_loc2_);
                                                            if(_loc10_ || _loc1_)
                                                            {
                                                               addr218:
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  addr219:
                                                                  §§push(_loc6_.y);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr233:
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc10_)
                                                                     {
                                                                        addr236:
                                                                        _loc2_ = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr239:
                                                                        §§push(_loc6_.y);
                                                                     }
                                                                  }
                                                                  addr242:
                                                                  if(§§pop() > _loc4_)
                                                                  {
                                                                     addr246:
                                                                     _loc4_ = Number(_loc6_.y);
                                                                     addr245:
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                }
                                                §§goto(addr131);
                                             }
                                             else
                                             {
                                                addr194:
                                                if(§§pop() > §§pop())
                                                {
                                                   §§push(_loc6_.x);
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      _loc3_ = Number(§§pop());
                                                      §§goto(addr206);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr206);
                                             }
                                          }
                                          else
                                          {
                                             addr155:
                                             §§push(_loc1_);
                                             if(_loc10_ || this)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§push(_loc6_.x);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         _loc1_ = §§pop();
                                                         addr182:
                                                         §§push(_loc6_.x);
                                                         if(!_loc11_)
                                                         {
                                                            addr186:
                                                            §§push(_loc3_);
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr245);
               }
               else
               {
                  §§push(_loc6_.x);
                  if(_loc10_ || _loc3_)
                  {
                     §§goto(addr155);
                  }
               }
               §§goto(addr246);
            }
            §§goto(addr137);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §8!8§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§71§);
         if(_loc10_ || param1)
         {
            var _loc7_:* = §§pop();
            if(!(_loc9_ && _loc3_))
            {
               §§push(§3I§);
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc7_);
                  if(_loc10_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc9_)
                        {
                           addr175:
                           §§push(0);
                           if(!(_loc9_ && _loc2_))
                           {
                              addr193:
                           }
                           else
                           {
                              addr207:
                           }
                        }
                        else
                        {
                           addr204:
                           §§push(1);
                           if(!_loc9_)
                           {
                              §§goto(addr207);
                           }
                        }
                        addr213:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = new b2CircleShape();
                              if(_loc10_ || this)
                              {
                                 §§push(_loc2_);
                                 §§push(this.§4!L§);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§pop().§'!p§(§§pop());
                                 if(_loc10_ || param1)
                                 {
                                    return _loc2_;
                                 }
                              }
                           case 1:
                              _loc3_ = this.§#5§();
                              (_loc4_ = new b2PolygonShape()).§!Y§(_loc3_,_loc3_.length);
                              _loc5_ = _loc4_.§+F§();
                              if(!(_loc9_ && _loc2_))
                              {
                                 _loc7_ = 0;
                                 if(!_loc9_)
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
                                       if(_loc10_)
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
                                 if(!(_loc10_ || _loc3_))
                                 {
                                    break;
                                 }
                              }
                              return _loc4_;
                        }
                        return null;
                        addr212:
                     }
                     else
                     {
                        §§push(§`C§);
                        if(_loc10_ || _loc2_)
                        {
                           addr203:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr204);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr203);
               }
               §§goto(addr193);
            }
            §§goto(addr175);
         }
         §§goto(addr213);
      }
   }
}
