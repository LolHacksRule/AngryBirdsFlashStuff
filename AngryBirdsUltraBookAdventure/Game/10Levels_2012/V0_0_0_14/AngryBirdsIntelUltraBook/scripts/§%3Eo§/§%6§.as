package §>o§
{
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   
   public class §%6§
   {
      
      public static var §9w§:Array;
       
      
      public function §%6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §3@§(param1:XMLList) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc12_ || _loc3_)
         {
            §9w§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc13_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              while(!(_loc13_ && §%6§))
                              {
                                 addr88:
                                 if(_loc13_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_.attribute("shape").length() <= 0)
                                       {
                                          if(!_loc13_)
                                          {
                                             §§goto(addr260);
                                          }
                                          §§goto(addr270);
                                       }
                                       break;
                                    }
                                    if(_loc12_)
                                    {
                                       §§push(_loc2_.@id);
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          if(!_loc13_)
                                          {
                                             if(_loc13_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr326:
                                          §§push(§[g§);
                                          §§push("WARNING, LevelItemShapes constructor, density is missing for shape: ");
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(§§pop() + _loc2_.@id);
                                          }
                                          §§pop().log(§§pop());
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr339);
                                    §§goto(addr270);
                                 }
                                 if(_loc2_.attribute("width").length() <= 0)
                                 {
                                    if(_loc12_)
                                    {
                                       §§goto(addr326);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr292);
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc13_ && param1)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§goto(addr130);
                        }
                        §§goto(addr95);
                     }
                  }
               }
            }
            §§goto(addr317);
         }
      }
      
      public static function §!!h§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || §%6§)
         {
            §9w§[§9w§.length] = new §0!N§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §7V§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§0!N§;
         (_loc5_ = new §0!N§(param1,param2,-1,-1,param4)).§=!&§(param3);
         if(!_loc6_)
         {
            _loc5_.§2! §();
         }
         do
         {
            §9w§[§9w§.length] = _loc5_;
         }
         while(_loc6_ && §%6§);
         
      }
      
      public static function §`4§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§0!N§;
         (_loc5_ = new §0!N§(param1,param2,param3,param3)).§=!&§(param4);
         if(!_loc7_)
         {
            §9w§[§9w§.length] = _loc5_;
         }
      }
      
      public static function §>1§(param1:String) : §0!N§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §9w§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc3_ || §%6§)
               {
                  §§push(§[g§);
                  §§push("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               loop1:
               while(_loc4_ && param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               if(_loc4_ && _loc3_)
               {
                  §§goto(addr95);
               }
               continue;
            }
            if((§9w§[_loc2_] as §0!N§).mName.toLowerCase() != param1.toLowerCase())
            {
               §§goto(addr56);
            }
            addr95:
            return §0!N§(§9w§[_loc2_]);
            §§goto(addr56);
         }
         return null;
      }
   }
}
