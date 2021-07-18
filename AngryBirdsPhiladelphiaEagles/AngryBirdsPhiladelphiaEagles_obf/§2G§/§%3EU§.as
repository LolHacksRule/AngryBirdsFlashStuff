package §2G§
{
   import §&^§.§[!7§;
   import §5!G§.§>X§;
   import §`K§.§ L§;
   import flash.utils.Dictionary;
   
   public class §>U§
   {
      
      public static var §#!R§:XML;
      
      public static var §;7§:XML;
      
      public static var §`!O§:Dictionary;
      
      public static var §,!@§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!O§ = new Dictionary();
         }
      }
      
      public function §>U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §+Q§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            §#!R§ = param1;
            §;7§ = param2;
            do
            {
               §@6§.§8s§(§#!R§.Item_Materials,§#!R§.Material_Damage_Multipliers,§#!R§.Material_Velocity_Multipliers);
               §"v§.§3B§(§#!R§.Item_Resources_Sounds);
               do
               {
                  §!!8§.§;H§(§#!R§.Item_Shapes);
               }
               while(!_loc7_);
               
            }
            while(_loc6_);
            
         }
         §>X§.§=M§(§;7§.Backgrounds);
         while(true)
         {
            while(true)
            {
               §`!O§ = new Dictionary();
               §,!@§ = new Array();
               if(!(_loc6_ && param2))
               {
                  if(true)
                  {
                     for each(_loc3_ in §#!R§.Items.Item)
                     {
                        if(_loc7_)
                        {
                           §,!@§.push(_loc3_.@id);
                           if(_loc7_)
                           {
                              §"g§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                           }
                        }
                     }
                     if(!_loc6_)
                     {
                        §<!D§(§#!R§.SoundChannels);
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public static function §"g§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §`!O§[param1.toLowerCase()] = new §5!1§(param1,param2,§@6§.§6k§(param3),§"v§.§^!H§(param4),!!param5 ? §!!8§.§5L§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §=v§(param1:String) : §5!1§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5!1§ = §`!O§[param1.toLowerCase()];
         if(!_loc4_)
         {
            if(_loc2_ == null)
            {
               do
               {
                  §§push(§ L§);
                  §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               while(!(_loc3_ || _loc3_));
               
               if(_loc3_ || _loc2_)
               {
                  return null;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §<v§() : Array
      {
         return §,!@§;
      }
      
      public static function §4=§(param1:String) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§5!1§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §`!O§)
         {
            if(!_loc6_)
            {
               if(_loc3_.§"9§.toUpperCase() == param1.toUpperCase())
               {
                  if(!(_loc6_ && param1))
                  {
                     _loc2_[_loc2_.length] = _loc3_.§4V§;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function §19§() : String
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
      
      public static function §<!D§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               while(true)
               {
                  § L§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  addr118:
                  addr81:
                  while(true)
                  {
                  }
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§ L§);
                     §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                     if(_loc5_)
                     {
                        §§push(§§pop() + _loc2_.@name);
                     }
                     §§pop().log(§§pop());
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
                  do
                  {
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        §§push(§ L§);
                        §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc2_.@name);
                        }
                        §§pop().log(§§pop());
                        while(!_loc6_)
                        {
                        }
                        §§goto(addr118);
                        addr71:
                     }
                     while(true)
                     {
                        §[!7§.§'<§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr71);
                     }
                  }
                  while(false);
                  
                  continue loop0;
                  addr46:
               }
            }
            while(true)
            {
               if(_loc2_.attribute("maxSound").length() <= 0)
               {
                  §§goto(addr81);
               }
               §§goto(addr46);
               §§goto(addr118);
            }
         }
      }
      
      public static function §^!Q§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5!1§ = §=v§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  addr37:
                  §§push((_loc2_.material as §,6§).§"!;§[§,6§.§ "§] == §,6§.§"I§);
                  if(_loc3_ || §>U§)
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
