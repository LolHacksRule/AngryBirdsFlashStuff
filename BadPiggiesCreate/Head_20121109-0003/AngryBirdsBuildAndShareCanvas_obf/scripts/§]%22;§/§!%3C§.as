package §]";§
{
   import §#";§.§0"#§;
   import §6]§.§,"0§;
   import flash.utils.Dictionary;
   import §switch§.§47§;
   
   public class §!<§
   {
      
      public static var §4!I§:XML;
      
      public static var §,-§:XML;
      
      public static var §[z§:Dictionary;
      
      public static var §?![§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[z§ = new Dictionary();
         }
      }
      
      public function §!<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §#R§(param1:XML, param2:XML) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || param2)
         {
            §4!I§ = param1;
            loop0:
            while(true)
            {
               §,-§ = param2;
               while(true)
               {
                  §"q§.§9!p§(§4!I§.Item_Materials,§4!I§.Material_Damage_Multipliers,§4!I§.Material_Velocity_Multipliers);
                  continue loop0;
                  addr59:
                  if(_loc7_ && §!<§)
                  {
                     continue;
                  }
                  §?![§ = new Array();
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           while(false)
                           {
                              loop6:
                              while(true)
                              {
                                 §[z§ = new Dictionary();
                                 addr45:
                                 addr78:
                                 while(!(_loc7_ && §!<§))
                                 {
                                    if(!(_loc6_ || §!<§))
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr59);
                                 }
                                 while(true)
                                 {
                                    §47§.§!A§(§,-§.Backgrounds);
                                    break loop6;
                                    §§goto(addr45);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr40);
                              }
                              addr40:
                           }
                           for each(_loc3_ in §4!I§.Items.Item)
                           {
                              if(!_loc7_)
                              {
                                 §?![§.push(_loc3_.@id);
                                 if(_loc6_ || §!<§)
                                 {
                                    §,!D§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
                                 }
                              }
                           }
                           if(!(_loc7_ && param2))
                           {
                              §@H§(§4!I§.SoundChannels);
                           }
                           return;
                           addr38:
                        }
                        while(true)
                        {
                           §`!o§.§2"0§(§4!I§.Item_Shapes);
                           §§goto(addr78);
                        }
                        addr84:
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr45);
               }
            }
         }
         §§goto(addr38);
      }
      
      public static function §,!D§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            §[z§[param1.toLowerCase()] = new §4!p§(param1,param2,§"q§.§6x§(param3),§+!$§.§>Z§(param4),!!param5 ? §`!o§.§0! §(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §[!@§(param1:String) : §4!p§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!p§ = §[z§[param1.toLowerCase()];
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  §§goto(addr65);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr67:
               }
            }
            while(true)
            {
               §,"0§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr67);
            }
            return null;
         }
         addr65:
         return _loc2_;
      }
      
      public static function §6p§() : Array
      {
         return §?![§;
      }
      
      public static function §'g§(param1:String) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§4!p§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[z§)
         {
            if(_loc6_)
            {
               if(_loc3_.§=!S§.toUpperCase() != param1.toUpperCase())
               {
                  continue;
               }
               if(_loc7_ && _loc2_)
               {
                  continue;
               }
            }
            _loc2_[_loc2_.length] = _loc3_.§+!A§;
         }
         return _loc2_;
      }
      
      public static function § case§() : String
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
      
      public static function §@H§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in param1.Channel)
         {
            if(_loc5_)
            {
               if(_loc2_.attribute("name").length() <= 0)
               {
                  if(_loc5_ || §!<§)
                  {
                     §,"0§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
                  }
                  while(true)
                  {
                  }
                  addr140:
               }
               loop2:
               while(true)
               {
                  if(_loc2_.attribute("maxSound").length() <= 0)
                  {
                     while(true)
                     {
                        §,"0§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
                        addr111:
                        while(!_loc6_)
                        {
                        }
                        continue loop2;
                        addr51:
                        if(!(_loc6_ && _loc3_))
                        {
                           addr58:
                           if(false)
                           {
                              while(true)
                              {
                                 if(_loc2_.attribute("volume").length() <= 0)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       while(true)
                                       {
                                          §,"0§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
                                       }
                                       addr84:
                                    }
                                    loop6:
                                    while(_loc5_ || param1)
                                    {
                                       while(true)
                                       {
                                          §0"#§.§4!m§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
                                          if(_loc6_ && _loc2_)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr51);
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr35);
                                 §§goto(addr58);
                              }
                              addr60:
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr84);
         }
      }
      
      public static function §!^§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!p§ = §[!@§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push((_loc2_.material as §0A§).mValues[§0A§.§!"3§] == §0A§.§7"=§);
                  if(_loc4_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr72:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr72);
      }
   }
}
