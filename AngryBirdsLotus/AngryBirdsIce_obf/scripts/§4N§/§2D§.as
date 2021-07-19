package §4N§
{
   import §;8§.§3f§;
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §2D§
   {
      
      public static const §#!$§:int = 0;
      
      public static const §`#§:int = 1;
      
      public static const §@i§:int = 2;
      
      public static const §+X§:int = 3;
      
      public static const §>!$§:int = 4;
      
      public static const §&W§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#!$§ = 0;
            while(true)
            {
               §`#§ = 1;
               while(true)
               {
                  §@i§ = 2;
                  §+X§ = 3;
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  §§goto(addr67);
               }
            }
         }
         addr67:
         while(true)
         {
            §>!$§ = 4;
            if(!_loc1_)
            {
               break;
            }
            continue loop1;
         }
      }
      
      public var mName:String;
      
      public var §-'§:int;
      
      public var §?!#§:Number;
      
      public var §26§:Number;
      
      public var §6!D§:Number;
      
      public var §+@§:Array = null;
      
      public function §2D§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
         }
         this.mName = param1;
         this.§-'§ = this.§7A§(param2);
         this.§?!#§ = param3;
         this.§26§ = param4;
         do
         {
            this.§6!D§ = param5;
         }
         while(_loc6_ && param2);
         
      }
      
      public function §0V§() : int
      {
         return this.§-'§;
      }
      
      public function §5!E§() : Number
      {
         return this.§?!#§;
      }
      
      public function §^C§() : int
      {
         return this.§26§;
      }
      
      private function §7A§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push("CIRCLE");
                     loop3:
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        loop4:
                        while(true)
                        {
                           §§push("POLYGON");
                           loop5:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 loop6:
                                 for(; _loc3_; while(!(_loc2_ && param1))
                                 {
                                    §§push("Image_Polygon");
                                    while(_loc3_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          addr163:
                                          return §`#§;
                                       }
                                       §§goto(addr76);
                                       §§push("Image_Circle");
                                       if(_loc2_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr117);
                                    }
                                    continue loop5;
                                 })
                                 {
                                    §§push("Image_Rectangle");
                                    while(_loc3_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§goto(addr186);
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          continue loop6;
                                          addr188:
                                       }
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr135:
                                             §§push(§@i§);
                                             if(_loc3_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr167:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop6;
                                                         §§goto(addr167);
                                                      }
                                                      continue loop2;
                                                      addr76:
                                                   }
                                                   addr186:
                                                   return §#!$§;
                                                }
                                                if(!(_loc3_ || this))
                                                {
                                                   §§goto(addr163);
                                                }
                                                if(!_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§3f§);
                                                      §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                      if(!(_loc2_ && this))
                                                      {
                                                         §§push(this.mName);
                                                         if(_loc3_ || param1)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() + " invalid name = ");
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  addr64:
                                                                  §§push(§§pop() + param1);
                                                               }
                                                            }
                                                            §§pop().log(§§pop());
                                                            if(!_loc3_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(_loc3_ || this)
                                                            {
                                                               §§push(§+X§);
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr188);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   addr32:
                                                }
                                                else
                                                {
                                                   §§goto(addr193);
                                                }
                                             }
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr32);
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              addr194:
                              return §&W§;
                              addr193:
                           }
                        }
                     }
                  }
               }
               return §+X§;
            }
         }
         return §>!$§;
      }
      
      public function §9H§() : Array
      {
         return this.§+@§;
      }
      
      public function §[7§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+@§ = param1;
         }
      }
      
      public function §<!,§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§>! §();
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
            §§pop().§?!#§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(!(_loc5_ && _loc1_))
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§26§ = §§pop();
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §>! §() : Array
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
         for each(_loc6_ in this.§+@§)
         {
            if(!_loc11_)
            {
               §§push(_loc5_);
               if(_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(_loc6_.x);
                        §§push(_loc6_.x);
                        if(!_loc11_)
                        {
                           var _loc9_:* = §§pop();
                           if(!(_loc11_ && this))
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(_loc9_);
                                    if(_loc10_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc10_ || this)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc10_)
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc10_ || this)
                                             {
                                                §§push(§§pop());
                                                if(_loc10_ || _loc2_)
                                                {
                                                   _loc9_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      addr113:
                                                      §§push(Number(§§pop()));
                                                      if(!_loc11_)
                                                      {
                                                         addr116:
                                                         _loc4_ = §§pop();
                                                         addr128:
                                                         §§push(Number(_loc9_));
                                                         if(!_loc11_)
                                                         {
                                                            addr132:
                                                            _loc2_ = §§pop();
                                                            addr254:
                                                            _loc5_ = false;
                                                            continue;
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             addr134:
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc10_ || _loc1_))
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(!(_loc11_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc10_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     break loop13;
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               addr159:
                                                                                                            }
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr151:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr247:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.x);
                                                                                                               addr250:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                            }
                                                                                                            addr248:
                                                                                                         }
                                                                                                         addr206:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.x);
                                                                                                            §§push(_loc3_);
                                                                                                         }
                                                                                                      }
                                                                                                      addr247:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr216:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(!(_loc10_ || _loc2_))
                                                                                                            {
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr250);
                                                                                                         addr216:
                                                                                                      }
                                                                                                      §§goto(addr216);
                                                                                                   }
                                                                                                   addr181:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr181);
                                                                                             }
                                                                                          }
                                                                                          addr205:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr216);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    addr252:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                 }
                                                                                 addr251:
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                        }
                                                                        addr195:
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr134);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr128);
                                    }
                                 }
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr159);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                     if(_loc10_ || _loc2_)
                     {
                        §§goto(addr247);
                        §§push(_loc1_);
                     }
                  }
                  §§goto(addr251);
               }
               §§goto(addr254);
            }
            §§goto(addr252);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §7!;§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§-'§);
         if(!_loc10_)
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || _loc2_)
            {
               §§push(§>!$§);
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(_loc9_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc10_)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              addr176:
                              if(§§pop() === _loc7_)
                              {
                                 addr178:
                                 §§push(1);
                                 if(_loc9_)
                                 {
                                    addr181:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr178);
                     }
                     else
                     {
                        §§push(§&W§);
                        if(_loc9_)
                        {
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr181);
                  }
               }
               §§goto(addr176);
            }
            §§goto(addr178);
         }
         addr187:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc9_)
               {
                  §§push(_loc2_);
                  §§push(this.§?!#§);
                  if(_loc9_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().SetRadius(§§pop());
                  if(_loc9_ || this)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§9H§();
               (_loc4_ = new b2PolygonShape()).SetAsArray(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.GetVertices();
               if(!_loc10_)
               {
                  _loc7_ = 0;
                  if(_loc9_ || _loc3_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(_loc9_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(!_loc10_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().y = §§pop();
                        }
                     }
                  }
                  if(_loc10_)
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
