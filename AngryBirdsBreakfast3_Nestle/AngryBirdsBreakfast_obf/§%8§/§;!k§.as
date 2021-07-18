package §%8§
{
   import §24§.;
   import §4!i§.§0]§;
   import §@!E§.b2Vec2;
   import flash.geom.Point;
   
   public class §;!k§
   {
       
      
      private var §!K§:§0]§;
      
      public function §;!k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public function §3!5§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc13_)
         {
            this.§!K§ = new §0]§();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(!(_loc12_ && _loc2_))
            {
               §§push(_loc2_.@shape == "CIRCLE");
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc12_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 if(!(_loc12_ && param1))
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc2_.@shape == "NONE");
                                       if(_loc12_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc13_ || this)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc2_.attribute("shape").length() <= 0)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      §#7§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                                      if(!(_loc12_ && _loc2_))
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   §§goto(addr310);
                                                }
                                                break loop5;
                                             }
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                §§push(_loc2_.@id);
                                                loop6:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!_loc13_)
                                                   {
                                                      break loop5;
                                                   }
                                                   addr274:
                                                   addr106:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.@shape);
                                                      if(_loc12_ && this)
                                                      {
                                                         continue loop6;
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(_loc13_)
                                                      {
                                                         while(false)
                                                         {
                                                            continue loop5;
                                                         }
                                                         _loc5_ = new Array();
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            var _loc10_:int = 0;
                                                            if(!_loc12_)
                                                            {
                                                               for each(_loc6_ in _loc2_.Vertex)
                                                               {
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                  }
                                                               }
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               if(_loc4_ == "CIRCLE")
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                  }
                                                                  addr229:
                                                                  this.§5!_§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                  addr251:
                                                               }
                                                               else
                                                               {
                                                                  this.§,4§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                  if(!_loc12_)
                                                                  {
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        addr227:
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr229);
                                                                        }
                                                                        addr252:
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr251);
                                                                     §§goto(addr229);
                                                                  }
                                                               }
                                                               §§goto(addr252);
                                                               addr207:
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr207);
                                                         addr75:
                                                      }
                                                      else
                                                      {
                                                         addr310:
                                                         §#7§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                         this.§2S§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                         if(!_loc12_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  §#7§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                                  addr339:
                                                               }
                                                               if(false)
                                                               {
                                                                  break loop6;
                                                               }
                                                               continue loop0;
                                                               break loop6;
                                                               addr323:
                                                            }
                                                            addr303:
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               §§goto(addr310);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         addr316:
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                }
                                                addr296:
                                                if(_loc2_.attribute("height").length() <= 0)
                                                {
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr310);
                                             }
                                             §§goto(addr106);
                                          }
                                          addr91:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             §§push(_loc2_.@shape == "POLYGON");
                                             if(_loc13_ || _loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop4;
                                          }
                                          addr146:
                                       }
                                       §§goto(addr310);
                                    }
                                    if(_loc2_.attribute("width").length() <= 0)
                                    {
                                       §§goto(addr323);
                                    }
                                    §§goto(addr296);
                                 }
                                 §§goto(addr310);
                              }
                           }
                           §§goto(addr91);
                        }
                        continue;
                        addr126:
                     }
                     §§goto(addr146);
                  }
               }
            }
            §§goto(addr75);
         }
      }
      
      public function §2S§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            this.§!K§[param1.toLowerCase()] = new §]!o§(param3,param4,param1);
         }
      }
      
      public function §,4§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§[_§ = new §4"+§(Vector.<b2Vec2>(param3),param1);
         if(_loc6_ || this)
         {
            this.§!K§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §5!_§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§[_§ = new §%!S§(param3,new Point(param4[0].x,param4[0].y),param1);
         if(_loc7_)
         {
            this.§!K§[param1.toLowerCase()] = _loc5_;
         }
      }
      
      public function §!E§(param1:String) : §[_§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[_§ = this.§!K§[param1.toLowerCase()];
         if(_loc4_)
         {
            if(!_loc2_)
            {
               if(_loc4_ || param1)
               {
                  §#7§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
            }
         }
         return _loc2_;
      }
   }
}
