package §@0§
{
   import §6A§.b2Vec2;
   import §@R§.§4,§;
   
   public class §]F§
   {
      
      public static var §#!,§:Array;
       
      
      public function §]F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §^!R§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc12_)
         {
            §#!,§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.Shape)
         {
            if(_loc12_ || _loc2_)
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
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(_loc12_)
                              {
                                 if(!(_loc12_ || _loc3_))
                                 {
                                    break;
                                    addr115:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc12_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(!_loc13_)
                                       {
                                          §§pop();
                                          if(_loc12_ || _loc3_)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_.@shape == "NONE");
                                                if(_loc13_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc2_.attribute("shape").length() <= 0)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §4,§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                                            if(_loc13_ && param1)
                                                            {
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      if(_loc2_.attribute("width").length() <= 0)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §4,§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                                            addr317:
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      break loop6;
                                                   }
                                                   if(_loc12_ || §]F§)
                                                   {
                                                      §§push(_loc2_.@id);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc13_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc2_.@shape);
                                                         if(!_loc12_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(_loc12_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop6;
                                                            }
                                                            _loc5_ = new Array();
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               var _loc10_:int = 0;
                                                               if(_loc12_)
                                                               {
                                                                  var _loc11_:* = _loc2_.Vertex;
                                                                  addr190:
                                                                  for each(_loc6_ in _loc11_)
                                                                  {
                                                                     if(_loc12_ || §]F§)
                                                                     {
                                                                        _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                               }
                                                               if(_loc12_)
                                                               {
                                                                  if(_loc4_ == "CIRCLE")
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                                                                     }
                                                                     addr218:
                                                                     §=!0§(_loc3_,_loc4_,_loc7_,_loc5_);
                                                                     addr240:
                                                                  }
                                                                  else
                                                                  {
                                                                     §0u§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
                                                                     if(!(_loc13_ && param1))
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr218);
                                                                           }
                                                                           addr241:
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr240);
                                                                        §§goto(addr218);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         else
                                                         {
                                                            addr333:
                                                            while(true)
                                                            {
                                                               break loop6;
                                                               addr286:
                                                               if(!(_loc13_ && param1))
                                                               {
                                                                  break loop7;
                                                               }
                                                            }
                                                            addr333:
                                                         }
                                                      }
                                                      addr293:
                                                      if(false)
                                                      {
                                                         break loop6;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr333);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc2_.attribute("height").length() <= 0)
                                                {
                                                   while(true)
                                                   {
                                                      §4,§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
                                                      addr308:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr302:
                                                }
                                                while(true)
                                                {
                                                   §;!d§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
                                                   if(_loc12_)
                                                   {
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr308);
                                                }
                                                §§goto(addr286);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr293);
                                       }
                                       continue loop1;
                                       addr120:
                                    }
                                    §§goto(addr80);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                     §§goto(addr115);
                  }
               }
            }
            §§goto(addr317);
         }
      }
      
      public static function §;!d§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §]F§))
         {
            §#!,§[§#!,§.length] = new §3U§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §0u§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§3U§;
         (_loc5_ = new §3U§(param1,param2,-1,-1,param4)).§[!X§(param3);
         if(_loc7_ || param1)
         {
            _loc5_.§^q§();
         }
         do
         {
            §#!,§[§#!,§.length] = _loc5_;
         }
         while(_loc6_);
         
      }
      
      public static function §=!0§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§3U§;
         (_loc5_ = new §3U§(param1,param2,param3,param3)).§[!X§(param4);
         if(_loc7_)
         {
            §#!,§[§#!,§.length] = _loc5_;
         }
      }
      
      public static function §7!P§(param1:String) : §3U§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §#!,§.length)
            {
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     loop1:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           _loc2_++;
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §4,§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
               return null;
            }
            if((§#!,§[_loc2_] as §3U§).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr52);
         }
         return §3U§(§#!,§[_loc2_]);
      }
   }
}
