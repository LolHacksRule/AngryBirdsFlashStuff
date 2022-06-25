package §<!1§
{
   import §>H§.b2Vec2;
   import §^_§.§!>§;
   
   public class §5Q§
   {
      
      public static var §>"§:Array;
       
      
      public function §5Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §?g§(param1:XMLList) : void
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
            §>"§ = new Array();
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
                              while(!(_loc13_ && §5Q§))
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
                                          §§push(§!>§);
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
      
      public static function §2n§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || §5Q§)
         {
            §>"§[§>"§.length] = new §2!W§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §1!u§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2!W§;
         (_loc5_ = new §2!W§(param1,param2,-1,-1,param4)).§]!H§(param3);
         if(!_loc6_)
         {
            _loc5_.§#!9§();
         }
         do
         {
            §>"§[§>"§.length] = _loc5_;
         }
         while(_loc6_ && §5Q§);
         
      }
      
      public static function §!!B§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§2!W§;
         (_loc5_ = new §2!W§(param1,param2,param3,param3)).§]!H§(param4);
         if(!_loc7_)
         {
            §>"§[§>"§.length] = _loc5_;
         }
      }
      
      public static function §@!P§(param1:String) : §2!W§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §>"§.length)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc3_ || §5Q§)
               {
                  §§push(§!>§);
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
            if((§>"§[_loc2_] as §2!W§).mName.toLowerCase() != param1.toLowerCase())
            {
               §§goto(addr56);
            }
            addr95:
            return §2!W§(§>"§[_loc2_]);
            §§goto(addr56);
         }
         return null;
      }
   }
}
