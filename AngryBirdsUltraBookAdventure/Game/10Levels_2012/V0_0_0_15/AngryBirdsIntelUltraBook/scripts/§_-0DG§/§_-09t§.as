package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   import §_-4g§.§_-pX§;
   import §_-9T§.§_-xG§;
   import flash.utils.Dictionary;
   
   public class §_-09t§
   {
      
      public static var §_-nY§:XML;
      
      public static var §_-WR§:XML;
      
      public static var §_-057§:Dictionary;
      
      public static var §_-jS§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-057§ = new Dictionary();
         }
      }
      
      public function §_-09t§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §_-0-C§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            §_-nY§ = param1;
            loop0:
            while(true)
            {
               §_-WR§ = param2;
               while(true)
               {
                  §_-oD§.§_-0BI§(§_-nY§.Item_Materials,§_-nY§.Material_Damage_Multipliers,§_-nY§.Material_Velocity_Multipliers);
                  loop2:
                  while(_loc7_ || param1)
                  {
                     §_-DR§.§_-lI§(§_-nY§.Item_Resources_Sounds);
                     while(true)
                     {
                        §_-xr§.§_-07q§(§_-nY§.Item_Shapes);
                        loop4:
                        while(true)
                        {
                           §_-xG§.§_-il§(§_-WR§.Backgrounds);
                           loop5:
                           while(true)
                           {
                              addr45:
                              while(true)
                              {
                                 §_-057§ = new Dictionary();
                                 while(_loc7_)
                                 {
                                    §_-jS§ = new Array();
                                    if(!_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public static function §_-aM§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            §_-057§[param1.toLowerCase()] = new §_-0-A§(param1,param2,§_-oD§.§_-sd§(param3),§_-DR§.§_-dY§(param4),!!param5 ? §_-xr§.§_-0AK§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §_-yf§(param1:String) : §_-0-A§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-0-A§ = §_-057§[param1.toLowerCase()];
         if(_loc4_ || param1)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || param1)
               {
                  return _loc2_;
               }
               addr89:
               while(true)
               {
               }
               addr89:
            }
            while(true)
            {
               §§push(§_-FK§);
               §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
               if(_loc4_ || param1)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(!(_loc3_ && §_-09t§))
               {
                  break;
               }
               §§goto(addr89);
            }
            return null;
         }
         §§goto(addr89);
      }
      
      public static function §_-19§() : Array
      {
         return §_-jS§;
      }
      
      public static function §_-Tl§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-0-A§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-057§)
         {
            if(!_loc7_)
            {
               if(_loc3_.§_-4k§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§_-o2§;
         }
         return _loc2_;
      }
      
      public static function §_-8J§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!_loc6_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-7g§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_ || _loc2_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  if(_loc6_)
                  {
                     §_-FK§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  }
                  while(true)
                  {
                     loop4:
                     while(_loc6_ || _loc3_)
                     {
                        do
                        {
                           if(_loc2_.attribute("volume").length() <= 0)
                           {
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(§_-FK§);
                                    §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + _loc2_.@name);
                                    }
                                    §§pop().log(§§pop());
                                 }
                                 addr82:
                              }
                              while(true)
                              {
                              }
                              addr90:
                           }
                           while(true)
                           {
                              §_-pX§.§_-UJ§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr90);
                           }
                           if(!_loc6_)
                           {
                              continue loop4;
                           }
                           addr54:
                           if(_loc6_ || _loc2_)
                           {
                              continue;
                           }
                           addr98:
                           while(true)
                           {
                              §§push(§_-FK§);
                              §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                              if(_loc6_)
                              {
                                 §§push(§§pop() + _loc2_.@name);
                              }
                              §§pop().log(§§pop());
                              continue loop4;
                              §§goto(addr54);
                           }
                        }
                        while(false);
                        
                        continue loop0;
                     }
                  }
                  addr135:
               }
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     §§goto(addr98);
                  }
                  §§goto(addr73);
                  §§goto(addr135);
               }
            }
            §§goto(addr82);
         }
      }
      
      public static function §_-LD§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-0-A§ = §_-yf§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  addr37:
                  §§push((_loc2_.material as §_-au§).§_-zN§[§_-au§.§_-dp§] == §_-au§.§_-cU§);
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr37);
      }
   }
}
