package §default§
{
   import § !G§.§ #§;
   import §0!G§.b2Vec2;
   
   public class §9;§
   {
      
      public static var §4T§:Array;
       
      
      public function §9;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §07§(param1:XMLList) : void
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
            §4T§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc13_ || _loc2_)
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
                           if(!_loc13_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc2_.@shape == "NONE");
                                    if(_loc12_)
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc12_ && §9;§))
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             addr292:
                                             if(_loc2_.attribute("shape").length() <= 0)
                                             {
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   § #§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                                   if(_loc13_ || §9;§)
                                                   {
                                                      addr269:
                                                      break;
                                                   }
                                                   §§goto(addr339);
                                                }
                                                break loop4;
                                             }
                                          }
                                          if(_loc13_)
                                          {
                                             §§push(_loc2_.@id);
                                             loop6:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr101:
                                                while(true)
                                                {
                                                   §§push(_loc2_.@shape);
                                                   if(_loc12_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc12_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop5;
                                                   }
                                                   _loc5_ = new Array();
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      var _loc10_:int = 0;
                                                      if(!_loc12_)
                                                      {
                                                         for each(_loc6_ in _loc2_.Vertex)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                            }
                                                         }
                                                      }
                                                      if(_loc13_ || _loc3_)
                                                      {
                                                         if(_loc4_ != "CIRCLE")
                                                         {
                                                            §8!'§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                            if(_loc13_)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     addr219:
                                                                     if(false)
                                                                     {
                                                                        addr221:
                                                                        §6!B§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                        addr228:
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr232:
                                                                  _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                  addr241:
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                addr323:
                                                addr339:
                                                § #§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                addr339:
                                                while(true)
                                                {
                                                   break loop5;
                                                }
                                             }
                                          }
                                          if(false)
                                          {
                                             break loop5;
                                          }
                                          continue loop0;
                                       }
                                       if(_loc2_.attribute("width").length() <= 0)
                                       {
                                          if(_loc13_ || _loc3_)
                                          {
                                             §§goto(addr323);
                                          }
                                          §§goto(addr339);
                                       }
                                       break;
                                       addr93:
                                    }
                                    else
                                    {
                                       addr136:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       if(!(_loc13_ || param1))
                                       {
                                          break;
                                       }
                                       §§push(_loc2_.@shape == "POLYGON");
                                       if(_loc13_ || _loc3_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr269);
                                 }
                                 while(true)
                                 {
                                    if(_loc2_.attribute("height").length() <= 0)
                                    {
                                       while(true)
                                       {
                                          § #§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                          addr307:
                                          while(true)
                                          {
                                             if(_loc13_)
                                             {
                                                break loop4;
                                             }
                                             break;
                                          }
                                          §§goto(addr339);
                                       }
                                       addr301:
                                    }
                                    addr270:
                                    while(true)
                                    {
                                       §&9§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                       if(_loc13_)
                                       {
                                          if(!(_loc12_ && §9;§))
                                          {
                                             §§goto(addr292);
                                          }
                                          else
                                          {
                                             §§goto(addr301);
                                          }
                                       }
                                       §§goto(addr307);
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr93);
                        }
                        continue;
                        addr121:
                     }
                     §§goto(addr136);
                  }
               }
            }
            §§goto(addr101);
         }
      }
      
      public static function §&9§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            §4T§[§4T§.length] = new §<A§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §8!'§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§<A§;
         (_loc5_ = new §<A§(param1,param2,-1,-1,param4)).§?!B§(param3);
         if(_loc7_ || param1)
         {
            _loc5_.§]!'§();
            do
            {
               §4T§[§4T§.length] = _loc5_;
            }
            while(!(_loc7_ || §9;§));
            
         }
      }
      
      public static function §6!B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§<A§;
         (_loc5_ = new §<A§(param1,param2,param3,param3)).§?!B§(param4);
         if(_loc7_)
         {
            §4T§[§4T§.length] = _loc5_;
         }
      }
      
      public static function §<!"§(param1:String) : §<A§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §4T§.length)
            {
               if(!(_loc4_ && §9;§))
               {
                  if(_loc4_ && §9;§)
                  {
                     continue;
                  }
                  if(_loc4_ && §9;§)
                  {
                     break;
                  }
                  § #§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
               if(!_loc4_)
               {
                  return null;
               }
            }
            else if((§4T§[_loc2_] as §<A§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §<A§(§4T§[_loc2_]);
      }
   }
}
