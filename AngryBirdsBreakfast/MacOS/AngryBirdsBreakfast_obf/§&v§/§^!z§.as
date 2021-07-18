package §&v§
{
   import §"n§.§<!Z§;
   import §6Z§.b2Vec2;
   import each.§!!'§;
   import flash.geom.Point;
   
   public class §^!z§
   {
       
      
      private var §!!&§:§<!Z§;
      
      public function §^!z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function §"[§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc13_ || _loc3_)
         {
            this.§!!&§ = new §<!Z§();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc13_ || _loc3_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           if(!(_loc12_ && this))
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(_loc13_)
                              {
                                 if(!(_loc12_ && param1))
                                 {
                                    addr128:
                                    §§push(§§pop());
                                    if(_loc13_ || _loc2_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_.@shape == "NONE");
                                       if(!_loc12_)
                                       {
                                          if(!_loc12_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(_loc2_.@id);
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(!(_loc13_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         addr113:
                                                         §§push(_loc2_.@shape);
                                                         if(!_loc13_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(_loc12_ && _loc2_)
                                                         {
                                                            addr271:
                                                            §!!'§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                                            if(_loc13_)
                                                            {
                                                               break loop3;
                                                            }
                                                            addr299:
                                                            if(false)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop0;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop6;
                                                         }
                                                         _loc5_ = new Array();
                                                         if(!_loc12_)
                                                         {
                                                            var _loc10_:int = 0;
                                                            if(!_loc12_)
                                                            {
                                                               var _loc11_:* = _loc2_.Vertex;
                                                               addr201:
                                                               for each(_loc6_ in _loc11_)
                                                               {
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                            }
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               if(_loc4_ != "CIRCLE")
                                                               {
                                                                  this.§],§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           addr239:
                                                                           this.§=!x§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                           if(_loc12_)
                                                                           {
                                                                              addr252:
                                                                              _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                              addr261:
                                                                              §§goto(addr239);
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr252);
                                                               addr212:
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      addr316:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         this.§6!<§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                         if(_loc13_)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc12_)
                                                            {
                                                               §§goto(addr299);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               addr339:
                                                            }
                                                         }
                                                         addr314:
                                                         while(true)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               §§goto(addr316);
                                                            }
                                                            else
                                                            {
                                                               §!!'§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                               addr323:
                                                               §§goto(addr339);
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §!!'§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                         §§goto(addr314);
                                                      }
                                                      addr308:
                                                      addr280:
                                                   }
                                                   while(!_loc12_)
                                                   {
                                                      §§goto(addr113);
                                                   }
                                                   continue loop5;
                                                }
                                                if(_loc2_.attribute("shape").length() <= 0)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                   }
                                                   §§goto(addr271);
                                                }
                                                break;
                                                §§goto(addr271);
                                             }
                                             addr317:
                                             if(_loc2_.attribute("width").length() <= 0)
                                             {
                                                §§goto(addr323);
                                             }
                                             break;
                                             addr91:
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       if(_loc2_.attribute("height").length() <= 0)
                                       {
                                          §§goto(addr308);
                                       }
                                       §§goto(addr280);
                                    }
                                 }
                              }
                              addr138:
                           }
                           break;
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr128);
                  }
                  if(!§§pop())
                  {
                     §§goto(addr138);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr316);
         }
      }
      
      public function §6!<§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§!!&§[param1.toLowerCase()] = new §4!a§(param3,param4);
         }
      }
      
      public function §],§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§each § = new § !h§(Vector.<b2Vec2>(param3));
         if(_loc6_ || this)
         {
            this.§!!&§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §=!x§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§each § = new §"a§(param3,new Point(param4[0].x,param4[0].y));
         if(_loc6_ || param3)
         {
            this.§!!&§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §;",§(param1:String) : §each §
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§each § = this.§!!&§[param1.toLowerCase()];
         if(!(_loc4_ && _loc3_))
         {
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  addr59:
                  §!!'§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
            }
            return _loc2_;
         }
         §§goto(addr59);
      }
   }
}
