package §?7§
{
   import §9"§.b2Vec2;
   import §@,§.§4h§;
   
   public class §#!L§
   {
      
      public static var §'c§:Array;
       
      
      public function §#!L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §2!H§(param1:XMLList) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         if(_loc13_ || _loc2_)
         {
            §'c§ = new Array();
         }
         for each(_loc2_ in param1.Shape)
         {
            if(!_loc12_)
            {
               §§push(_loc2_.@shape == "CIRCLE");
               if(_loc13_ || param1)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(_loc2_.@shape == "POLYGON");
                              if(_loc13_)
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
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc12_ && _loc2_)
                                          {
                                             continue loop8;
                                          }
                                          §§pop();
                                          while(true)
                                          {
                                             addr74:
                                             while(true)
                                             {
                                                §§push(_loc2_.@shape == "NONE");
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       continue;
                                       addr116:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_ || param1)
                                          {
                                             §§push(_loc2_.@id);
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   if(_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr124);
                                          }
                                          addr269:
                                          break;
                                       }
                                       if(_loc2_.attribute("shape").length() <= 0)
                                       {
                                          if(!_loc12_)
                                          {
                                             §4h§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
                                             if(!_loc12_)
                                             {
                                                §§goto(addr269);
                                             }
                                             §§goto(addr307);
                                          }
                                          §4h§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
                                          addr323:
                                          §§goto(addr307);
                                       }
                                       break;
                                       §§goto(addr307);
                                    }
                                    if(_loc2_.attribute("width").length() <= 0)
                                    {
                                       if(!(_loc12_ && §#!L§))
                                       {
                                          §§goto(addr323);
                                       }
                                       §§goto(addr307);
                                    }
                                    §§goto(addr292);
                                 }
                                 continue loop1;
                                 addr111:
                              }
                              §§goto(addr116);
                           }
                        }
                        addr138:
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr138);
            }
            §§goto(addr124);
         }
      }
      
      public static function §8g§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §'c§[§'c§.length] = new §!S§(param1,param2,param3,param4,param5);
         }
      }
      
      public static function §^!&§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§!S§;
         (_loc5_ = new §!S§(param1,param2,-1,-1,param4)).§7!§(param3);
         if(!(_loc7_ && param1))
         {
            _loc5_.§`6§();
            do
            {
               §'c§[§'c§.length] = _loc5_;
            }
            while(!_loc6_);
            
         }
      }
      
      public static function §^@§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§!S§;
         (_loc5_ = new §!S§(param1,param2,param3,param3)).§7!§(param4);
         if(_loc6_ || §#!L§)
         {
            §'c§[§'c§.length] = _loc5_;
         }
      }
      
      public static function §^6§(param1:String) : §!S§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §'c§.length)
            {
               if(!_loc3_)
               {
                  if(_loc3_ && param1)
                  {
                     addr59:
                     _loc2_++;
                     continue;
                  }
                  §4h§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
               }
               if(_loc4_)
               {
                  break;
               }
               continue;
            }
            if((§'c§[_loc2_] as §!S§).mName.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr84);
            }
            §§goto(addr59);
         }
         if(!_loc3_)
         {
            return null;
         }
         addr84:
         return §!S§(§'c§[_loc2_]);
      }
   }
}
