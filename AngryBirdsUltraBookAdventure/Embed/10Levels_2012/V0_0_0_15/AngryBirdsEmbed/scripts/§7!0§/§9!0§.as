package §7!0§
{
   import §+!"§.§5!<§;
   import §5!%§.§%p§;
   import §@D§.§6I§;
   import flash.utils.Dictionary;
   
   public class §9!0§
   {
      
      public static var §4!8§:XML;
      
      public static var §]!4§:XML;
      
      public static var §3! §:Dictionary;
      
      public static var §#Y§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3! § = new Dictionary();
         }
      }
      
      public function §9!0§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §2!F§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            §4!8§ = param1;
            if(_loc6_)
            {
               §]!4§ = param2;
               if(!(_loc7_ && param1))
               {
                  addr36:
                  §=c§.§^&§(§4!8§.Item_Materials,§4!8§.Material_Damage_Multipliers,§4!8§.Material_Velocity_Multipliers);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr57);
               }
               addr51:
               §;%§.§,]§(§4!8§.Item_Resources_Sounds);
               if(!_loc7_)
               {
                  addr57:
                  §]!5§.§;J§(§4!8§.Item_Shapes);
                  addr61:
                  §%p§.§ use§(§]!4§.Backgrounds);
                  if(!_loc7_)
                  {
                     §3! § = new Dictionary();
                  }
                  §#Y§ = new Array();
               }
               for each(_loc3_ in §4!8§.Items.Item)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §#Y§.push(_loc3_.@id);
                     if(_loc6_)
                     {
                        addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                     }
                  }
               }
               if(!_loc7_)
               {
                  §52§(§4!8§.SoundChannels);
               }
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr36);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && §9!0§))
         {
            §3! §[param1.toLowerCase()] = new §9!;§(param1,param2,§=c§.§9!"§(param3),§;%§.§3N§(param4),!!param5 ? §]!5§.§ r§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §&!<§(param1:String) : §9!;§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!;§ = §3! §[param1.toLowerCase()];
         if(_loc4_ || §9!0§)
         {
            if(_loc2_ != null)
            {
               if(!_loc3_)
               {
                  return _loc2_;
               }
            }
            §§push(§5!<§);
            §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
         }
         return null;
      }
      
      public static function §]!H§() : Array
      {
         return §#Y§;
      }
      
      public static function §[!8§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9!;§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §3! §)
         {
            if(_loc6_ || §9!0§)
            {
               if(_loc3_.§5x§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§2Z§;
         }
         return _loc2_;
      }
      
      public static function §5`§() : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         §§push(_loc2_);
         if(_loc6_)
         {
            §§push(§§pop() * _loc1_.length);
         }
         var _loc3_:int = §§pop() as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §52§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc6_ || param1)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §5!<§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  }
                  addr72:
                  §§push(§5!<§);
                  §§push("WARNING, LevelItems->loadSoundChannels() maxSound is missing: ");
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() + _loc2_.@name);
                  }
                  §§pop().log(§§pop());
                  if(!_loc5_)
                  {
                     addr87:
                     if(_loc2_.attribute("volume").length() <= 0)
                     {
                        if(_loc6_)
                        {
                           addr105:
                           §§push(§5!<§);
                           §§push("WARNING, LevelItems->loadSoundChannels() volume is missing: ");
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + _loc2_.@name);
                           }
                           §§pop().log(§§pop());
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                     }
                     §6I§.§"!'§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                     continue;
                  }
                  §§goto(addr105);
               }
               if(_loc2_.attribute("maxSound").length() <= 0)
               {
                  §§goto(addr72);
               }
               §§goto(addr87);
            }
            §§goto(addr72);
         }
      }
      
      public static function §9#§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9!;§ = §&!<§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push((_loc2_.material as §^!%§).§+!5§[§^!%§.§ 8§] == §^!%§.§@`§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  §§push(true);
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
   }
}
