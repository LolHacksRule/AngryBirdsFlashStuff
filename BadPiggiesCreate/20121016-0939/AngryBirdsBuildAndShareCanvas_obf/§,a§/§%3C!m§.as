package §,a§
{
   import §-!n§.§5!U§;
   import §9=§.§0!5§;
   import §=!M§.§9!P§;
   import flash.utils.Dictionary;
   
   public class §<!m§
   {
      
      public static var §17§:XML;
      
      public static var §?!X§:XML;
      
      public static var §"!_§:Dictionary;
      
      public static var §&" §:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §"!_§ = new Dictionary();
         }
      }
      
      public function §<!m§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §0_§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            §17§ = param1;
            loop0:
            while(true)
            {
               §?!X§ = param2;
               loop1:
               while(true)
               {
                  §+!s§.§>J§(§17§.Item_Materials,§17§.Material_Damage_Multipliers,§17§.Material_Velocity_Multipliers);
                  while(true)
                  {
                     §>Z§.§"-§(§17§.Item_Resources_Sounds);
                     loop3:
                     while(true)
                     {
                        §3g§.§4#§(§17§.Item_Shapes);
                        addr76:
                        while(_loc6_)
                        {
                           continue loop0;
                           if(_loc6_ || param1)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public static function §9%§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param2))
         {
            §"!_§[param1.toLowerCase()] = new §]!>§(param1,param2,§+!s§.§>!O§(param3),§>Z§.§,">§(param4),!!param5 ? §3g§.§7!U§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §"!F§(param1:String) : §]!>§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]!>§ = §"!_§[param1.toLowerCase()];
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               loop0:
               while(true)
               {
                  §9!P§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr71:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc3_ || _loc3_)
               {
                  return null;
               }
            }
            return _loc2_;
         }
         §§goto(addr71);
      }
      
      public static function §1C§() : Array
      {
         return §&" §;
      }
      
      public static function §3!j§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§]!>§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §"!_§)
         {
            if(_loc7_)
            {
               if(_loc3_.§=!_§.toUpperCase() == param1.toUpperCase())
               {
                  if(!_loc6_)
                  {
                     _loc2_[_loc2_.length] = _loc3_.§!F§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function § !P§() : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(!(_loc6_ && _loc1_))
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §'W§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc5_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  while(true)
                  {
                     §9!P§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                     addr125:
                     while(true)
                     {
                     }
                  }
                  addr122:
               }
               loop3:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     while(true)
                     {
                        §9!P§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                        addr98:
                        while(_loc5_ || param1)
                        {
                        }
                        continue loop3;
                     }
                     addr92:
                  }
                  while(true)
                  {
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        while(_loc5_)
                        {
                           §9!P§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr122);
                           }
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr35);
                  }
               }
            }
            §§goto(addr65);
         }
      }
      
      public static function §%e§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§]!>§ = §"!F§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || param1)
               {
                  addr42:
                  §§push((_loc2_.material as §+!Z§).mValues[§+!Z§.§-!#§] == §+!Z§.§>$§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr66:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr66);
         }
         §§goto(addr42);
      }
   }
}
