package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   import §_-Yp§.b2Vec2;
   
   public class §_-xr§
   {
      
      public static var §_-eQ§:Array;
       
      
      public function §_-xr§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §_-07q§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(!(_loc13_ && _loc3_))
         {
            §_-eQ§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc12_ || _loc2_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(_loc12_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           if(_loc12_)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc13_)
                                          {
                                             break;
                                             addr296:
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_.@shape == "NONE");
                                             if(!_loc12_)
                                             {
                                                continue loop4;
                                             }
                                             if(!(_loc12_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             if(_loc13_ && _loc2_)
                                             {
                                                continue loop9;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc2_.attribute("shape").length() <= 0)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         addr260:
                                                         §§push(§_-FK§);
                                                         §§push("WARNING, LevelItemShapes constructor, bodyType is missing for shape: ");
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop() + _loc2_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                         if(_loc12_ || _loc2_)
                                                         {
                                                         }
                                                         break loop4;
                                                      }
                                                      break loop5;
                                                   }
                                                   if(_loc2_.attribute("width").length() <= 0)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§_-FK§);
                                                         §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            §§push(§§pop() + _loc2_.@id);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr364);
                                                      }
                                                      addr351:
                                                   }
                                                   break;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(_loc2_.@id);
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc12_ || §_-xr§)
                                                      {
                                                         §§push(_loc2_.@shape);
                                                         if(!(_loc12_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                            _loc5_ = new Array();
                                                            if(_loc12_)
                                                            {
                                                               var _loc10_:int = 0;
                                                               if(_loc12_ || param1)
                                                               {
                                                                  var _loc11_:* = _loc2_.Vertex;
                                                                  addr195:
                                                                  for each(_loc6_ in _loc11_)
                                                                  {
                                                                     if(!(_loc13_ && _loc2_))
                                                                     {
                                                                        _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                     }
                                                                     §§goto(addr195);
                                                                  }
                                                               }
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(_loc4_ != "CIRCLE")
                                                                  {
                                                                     §_-kA§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                     if(!(_loc13_ && §_-xr§))
                                                                     {
                                                                        addr224:
                                                                        if(false)
                                                                        {
                                                                           addr226:
                                                                           §_-hD§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                           addr233:
                                                                           if(_loc12_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr241:
                                                                                 _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                              }
                                                                              addr251:
                                                                              continue loop0;
                                                                              addr237:
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        §§goto(addr251);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         else
                                                         {
                                                            addr364:
                                                            while(true)
                                                            {
                                                               break loop6;
                                                            }
                                                            addr364:
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   addr319:
                                                   §§push(§_-FK§);
                                                   §§push("WARNING, LevelItemShapes constructor, friction is missing for shape: ");
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() + _loc2_.@id);
                                                   }
                                                   addr327:
                                                   §§pop().log(§§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         break loop4;
                                                      }
                                                      addr276:
                                                      while(true)
                                                      {
                                                         §_-Bb§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                §§goto(addr364);
                                             }
                                             while(true)
                                             {
                                                if(_loc2_.attribute("height").length() <= 0)
                                                {
                                                   if(_loc12_ || _loc2_)
                                                   {
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         §§goto(addr319);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr351);
                                                      }
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr276);
                                             }
                                          }
                                          while(false)
                                          {
                                             §§goto(addr298);
                                             §§goto(addr276);
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr276);
                                       }
                                    }
                                    §§goto(addr104);
                                 }
                                 continue loop1;
                              }
                              addr123:
                           }
                           §§goto(addr296);
                        }
                        addr140:
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr260);
         }
      }
      
      public static function §_-Bb§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            §_-eQ§[§_-eQ§.length] = new §_-sQ§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §_-kA§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§_-sQ§;
         (_loc5_ = new §_-sQ§(param1,param2,-1,-1,param4)).§_-MC§(param3);
         if(_loc7_)
         {
            _loc5_.§_-UN§();
            do
            {
               §_-eQ§[§_-eQ§.length] = _loc5_;
            }
            while(_loc6_);
            
         }
      }
      
      public static function §_-hD§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-sQ§;
         (_loc5_ = new §_-sQ§(param1,param2,param3,param3)).§_-MC§(param4);
         if(_loc6_)
         {
            §_-eQ§[§_-eQ§.length] = _loc5_;
         }
      }
      
      public static function §_-0AK§(param1:String) : §_-sQ§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §_-eQ§.length)
            {
               if(_loc3_)
               {
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  if(_loc4_ && param1)
                  {
                     break;
                  }
                  §§push(§_-FK§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(!(_loc4_ && §_-xr§))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               if(!(_loc4_ && _loc2_))
               {
                  return null;
               }
            }
            else if((§_-eQ§[_loc2_] as §_-sQ§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         return §_-sQ§(§_-eQ§[_loc2_]);
      }
   }
}
