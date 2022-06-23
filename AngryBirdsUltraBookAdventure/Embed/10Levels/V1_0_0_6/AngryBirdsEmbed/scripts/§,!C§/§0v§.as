package §,!C§
{
   import §#h§.§ !H§;
   import §8!>§.§ !4§;
   import §>K§.§9X§;
   import flash.utils.Dictionary;
   
   public class §0v§
   {
      
      public static var §8!G§:XML;
      
      public static var §2!;§:XML;
      
      public static var §@_§:Dictionary;
      
      public static var §`F§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@_§ = new Dictionary();
         }
      }
      
      public function §0v§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §&M§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            §8!G§ = param1;
            if(_loc6_)
            {
               §2!;§ = param2;
               if(!(_loc7_ && param1))
               {
                  addr36:
                  §<!'§.§!N§(§8!G§.Item_Materials,§8!G§.Material_Damage_Multipliers,§8!G§.Material_Velocity_Multipliers);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr57);
               }
               addr51:
               §'&§.§'N§(§8!G§.Item_Resources_Sounds);
               if(!_loc7_)
               {
                  addr57:
                  §9b§.§%'§(§8!G§.Item_Shapes);
                  addr61:
                  § !4§.§2!0§(§2!;§.Backgrounds);
                  if(!_loc7_)
                  {
                     §@_§ = new Dictionary();
                  }
                  §`F§ = new Array();
               }
               for each(_loc3_ in §8!G§.Items.Item)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §`F§.push(_loc3_.@id);
                     if(_loc6_)
                     {
                        addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                     }
                  }
               }
               if(!_loc7_)
               {
                  §,A§(§8!G§.SoundChannels);
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
         if(!(_loc14_ && §0v§))
         {
            §@_§[param1.toLowerCase()] = new §+X§(param1,param2,§<!'§.§"P§(param3),§'&§.§6B§(param4),!!param5 ? §9b§.§,W§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §&2§(param1:String) : §+X§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+X§ = §@_§[param1.toLowerCase()];
         if(_loc4_ || §0v§)
         {
            if(_loc2_ != null)
            {
               if(!_loc3_)
               {
                  return _loc2_;
               }
            }
            §§push(§9X§);
            §§push("WARNING: LevelItem -> getItem request has no return value, this item does not exist: ");
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
         }
         return null;
      }
      
      public static function §0!+§() : Array
      {
         return §`F§;
      }
      
      public static function §=7§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§+X§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@_§)
         {
            if(_loc6_ || §0v§)
            {
               if(_loc3_.§4!§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§>!"§;
         }
         return _loc2_;
      }
      
      public static function §[_§() : String
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
      
      public static function §,A§(param1:XMLList) : void
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
                     §9X§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  }
                  addr72:
                  §§push(§9X§);
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
                           §§push(§9X§);
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
                     § !H§.§+z§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
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
      
      public static function §5-§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+X§ = §&2§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push((_loc2_.material as §8!3§).§"[§[§8!3§.§"!I§] == §8!3§.§%2§);
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
